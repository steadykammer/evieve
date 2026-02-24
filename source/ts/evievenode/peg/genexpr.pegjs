/**
	This document implements the GenExpr grammar

    Copyright (c) 2025 Cycling '74

    Permission is hereby granted, free of charge, to any person obtaining a 
    copy of this software and associated documentation files (the “Software”), 
    to deal in the Software without restriction, including without limitation 
    the rights to use, copy, modify, merge, publish, distribute, sublicense, 
    and/or sell copies of the Software, and to permit persons to whom the 
    Software is furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in 
    all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING 
    FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER 
    DEALINGS IN THE SOFTWARE.
**/

/*
	This document is based on the original Lua/LPEG grammar used in Gen 2, but the AST it produces is closer to estree in style.

	It uses the Parsing Expression Grammar formalism (PEG),
	as implemented in [pegjs](http://pegjs.org/documentation).
	(For reference, [here's ES5 in pegjs](https://github.com/pegjs/pegjs/blob/master/examples/javascript.pegjs))

	The **grammar** is a list of named rules, beginning with "start"

	Each **rule** is defined as a pattern, optionally followed by an action (in braces)

	**Patterns** can use quoted strings, other rule names, and some operators
	E.g. (x)? makes x optional, (x)* matches zero or more, (x)+ matches 1 or more, (a / b) matches either a or b, [0-9] matches any digit, etc.
	Matches can be named, e.g. arg:expression matches the rule expression and names its result "arg"

	**Actions** are blocks of JavaScript code that will be run when a rule matches, with named arguments available as locals. In addition, the block of js code at the head of this document is also available, and a few other handy methods, such as text() for the original input.

	Structure of the document:
	- header block of helper functions (for use in rule actions)
	- start rule (main translation unit stuff)
	- declarations
	- statements
	- expressions
	- literals

	TODO:
	- comments are recognized, but not captured.
	- grammar-level errors
	- more AST sorting
	- additional identifier validation for reserved words (as an action?)

	Some questions:
	- assignment is an expression; shouldn't it be a statement?
		- "i=1" => ExpressionStatement(AssignmentExpression) yuck.
		- allowing assignment_expression means "if (x=foo()) {...}" works.
		  not clear whether that is really an advantage

	- for() is defined as for(expression;expression;expression) but we could (and perhaps should) restrict this
		- and if assignment_expression is a statement, then for's init & update should also be statements?
	- declarations get merged into a big list -- does it make sense?
	- currently genexpr declarations can only occur before other statements
		- no reason to restrict the grammar this way;
		  but the semantics should follow;
		  i.e. avoid the JavaScript var mistake
		- advantage of relaxing this is that we could use const variables in declaration arguments
	- currently functions can only appear before declarations, and no functions-within-functions. Makes sense for restricted data-oriented destinations (DSP, GLSL etc.)
	- currently function prototypes are the same as function declarations with body = null
	- we could add a subgrammar for constant expressions, which would be useful for e.g. function default values, declaration attributes etc.
	- "else if() {}" statements really become "else { if() {} }", making deeper trees. We could flatten that if the AST for IfStatement would allow an array of test/consequent pairs, like a switch() block.
	- we could add switch() quite easily.

*/

{
	/*
		PEG.js lets us define some helper functions in the header
		(for use in rule actions)
	*/

	// operations of lower valued precedence will be nested deeper
	// e.g. a*b+c => (a*b)+c
	var operator_precedence = {
		"*": 1, "/": 1, "%": 1,
		"+": 2, "-": 2,
		"<<": 3, "<<": 3,
		"<=p": 4, ">=p": 4, "<p": 4, ">p": 4,
		"<=": 4, ">=": 4, "<": 4, ">": 4,
		"==p": 5, "!=p": 5, "==": 5, "!=": 5,
		"&": 6, "^": 7, "|": 8,
		"&&": 9, "^^": 10, "||": 11,
	};

	// it turned out to be easier to normalize binexpr chains in this action step
	// than dealing with the depth of rules the grammar would require
	function normalizeBinaryExpression(first, rest) {
		// start with the common two-arg case:
		var result = {
			type: "BinaryExpression",
			operator: rest[0].op,
			left: first,
			right: rest[0].val,
		};
		// now refine for multiple args according to precedence:
		for (var i=1; i<rest.length; i++) {
			var op0 = rest[i-1].op,
				op1 = rest[i].op;
			if (operator_precedence[op0] <= operator_precedence[op1]) {
				// a,*b,+c => ((a*b)+c)
				result = {
					type: "BinaryExpression",
					operator: rest[i].op,
					left: result,
					right: rest[i].val,
				};
			} else {
				// a,+b,*c => (a+(b*c))
				result.right = {
					type: "BinaryExpression",
					operator: rest[i].op,
					left: result.right,
					right: rest[i].val,
				};
			}
		}
		return result;
	}
}

///////////////////// START RULE /////////////////////

/*
	GenExpr should allow either translation_unit or expression as valid start rules
	(so "in1*2" is a valid expr/codebox text)

	So when building the parser, pass these options:
	{ allowedStartRules: [ "start", "translation_unit", "gen" ] }

	To evaluate a string as an expression (rather than a full translation unit):

	parser.parse(str, { startRule: "gen" });
*/

start
  = translation_unit

/*
	This rule works for a simple expression
	and it wraps it into a unit with "out1=<expr>".
	E.g. in gen a [expr in1*2]
*/
gen = _ expr:true_expression_list _ {
	// TODO: perhaps might need to handle expression lists
	// TODO: might need to handle references to inputs differently here
  	return {
  		"type": "GenExpression",
		"expressions": expr,
  	}
}

/*
	This is a full, normal entry point for a codebox of genexpr
*/
translation_unit
  = _ commands:compiler_command*
    functions:(function_declaration)*
	decls:declaration*
  	body:expr_and_decl_statement_list
	_ {
		// decls is a list of lists, needs to be flattened:
  		decls = Array.prototype.concat.apply([], decls);
  		return {
			type: "TranslationUnit",
			commands: commands,
			functions: functions,
			decls: decls,
			body: body,
		};
	}

_ "whitespace"
  = (comment / [ \t\n\r])*

newline
  = [\n\r\u2028\u2029]

// TODO: attach as leadingComments / trailingComments properties of the nearest node
comment
  = multi_line_comment
  / single_line_comment

single_line_comment
  = "//" (!newline .)* newline?

multi_line_comment
  = "/*" (!"*/" .)* "*/"

// require "foo"
// require ("foo");
compiler_command
  = cmd:compiler_commands _
    name:(("(" _ val:LITERAL_STRING _ ")" { return val; })
    	  / LITERAL_STRING)
    _ ";"?
    _ {
    	return {
            "type": "ExpressionStatement",
            "expression": {
                "type": "CallExpression",
                "callee": {
                    "type": "Identifier",
                    "name": cmd
                },
                "arguments": [ name ]
            },
            // non-estree:
            gen_kind: "compiler_command",
        }

    }

// currently only one compiler command exists:
compiler_commands = "require"

///////////////////// DECLARATIONS /////////////////////

function_declaration
  =
  _ id:IDENTIFIER
  _ "(" _ params:function_declaration_parameters? _ ")"
  //_ body:compound_statement?
  _ "{" _ decls:declaration* body:expr_statement_list? _ "}"
  _ {
  		// need to pull attributes out as defaults.
  		var params = params || [];
  		var defaults = [];
  		for (var i=0; i<params.length; i++) {
  			var p = params[i];
  			if (p.type == "ParameterDefault") {
  				params[i] = p.name;
  				defaults[i] = p.value;
  			} else {
  				params[i] = p;
  				defaults[i] = null;
  			}
  		}

  		return {
  			type:   "FunctionDeclaration",
			id:     id,
			params: params,
			defaults: defaults,
			decls: decls,
			body:   {
				type : "BlockStatement",
				body : body
			},
			"generator": false,
            "expression": false
  		};
  }

function_declaration_parameters
  = first:function_declaration_parameter
    rest:(_ "," _ expr:function_declaration_parameter { return expr; })* {
	// TODO: separate out the named arguments?
	return [first].concat(rest);
}

// TODO: val here should be a constant expression.
function_declaration_parameter
  = key:IDENTIFIER _ "=" _ val:true_expression {
	  return {
		type: "ParameterDefault",
		name: key,
		value: val,
	  }
	}
	/ IDENTIFIER

declaration
  = d:declarator_list _ ";" _ { return d; }

declarator_list
  = ty:fully_specified_type _ first:single_declaration rest:(_ "," _ d:single_declaration { return d; })* {
		// push types into the VariableDeclaration nodes
		// and return them all as a list
  		var list = [first].concat(rest);
  		// for each item, convert to let id = new Ty(init);
  		for (var i=0; i<list.length; i++) {
			var p = list[i];
			var init = [];
			if (p.init) init = p.init.arguments;
			list[i] = {
            	type: "VariableDeclaration",
				kind: "let",
				declarations: [{
					type: "VariableDeclarator",
					id: p.id,
					init: {
						"type": "NewExpression",
						"callee": ty,
						"arguments": init,
					}
				}]
			};
		}
  		return list;
  }

single_declaration
  = id:IDENTIFIER init:call_member_expression? {
  		return {
  			id:   id,
        	init: init
  		};
  }

fully_specified_type
  = type_specifier

type_specifier = IDENTIFIER

///////////////////// STATEMENTS /////////////////////

statement = compound_statement / simple_statement

simple_statement
  = jump_statement
  / expression_statement
  / selection_statement
  / iteration_statement

compound_statement
  = "{" _ result:expr_statement_list? _ "}" _ {
  		return {
  			type: "BlockStatement",
  			body: result,
  		}
  	}

expr_and_decl_statement_list
  = stats: (
  		compound_statement
  		/ expression_statement
  		/ selection_statement
  		/ iteration_statement
		/ declaration
  	)*
  	jump: jump_statement? {
  		if (jump) stats.push(jump);
  		return stats;
  }

expr_statement_list
  = stats: (
  		compound_statement
  		/ expression_statement
  		/ selection_statement
  		/ iteration_statement
  	)*
  	jump: jump_statement? {
  		if (jump) stats.push(jump);
  		return stats;
  }

expression_statement
  = ";" _
  / expr:expression _ ";" _ {
  		return {
  			type: "ExpressionStatement",
  			expression: expr
  		}
  }

// this accommodates if() {} else if {} else {} kinds of chains
// but they create nested structures
// we could re-arrange this in the grammar if preferable
selection_statement
  = "if" _
  "(" _ test:expression _ ")" _
  consequent:statement _
  alternate:(_ "else" _ s:statement { return s; })? _
  {
	return {
		type:       "IfStatement",
		test:       test,
		consequent: consequent,
		alternate:  alternate
	};
  }

iteration_statement
  = while_statement
  / do_statement
  / numeric_for_statement

while_statement
  = "while" _ "(" _ test:expression _ ")" _ body:statement _
  {
	return {
		type: "WhileStatement",
		test: test,
		body: body
	};
  }

do_statement
  = "do" _ body:statement _ "while" _ "(" _ test:expression _ ")" _ ";" _
  {
	return {
		type: "DoWhileStatement",
		test: test,
		body: body
	};
  }

numeric_for_statement
  = "for" _ "(" _
    init:multi_declaration_expression _ ";" _
    test:expression _ ";" _
    update:expression? _ ")" _
    body:statement _
  {
      return {
        type:   "ForStatement",
        init:   init,
        test:   test,
        update: update,
        body:   body
      };
  }

jump_statement
  = continue_statement
  / break_statement
  / return_statement

continue_statement
  = "continue" _ ";" _ {
  	return {
  		type: "ContinueStatement" ,
  		// non-estree:
  		isjump: true,
  	};
  }

break_statement
  = "break" _ ";" _ {
  	return {
  		type: "BreakStatement",
  		// non-estree:
  		isjump: true,
  	};
  }

return_statement
  = "return" _ a:true_expression_list _ ";" {
  		if (a.length > 1) {
  			a = { type: "ArrayExpression", elements: a	};
  		} else {
  			a = a[0];
  		}
  		return {
  			type: "ReturnStatement",
  			argument: a,
			// non-estree:
			isjump: true,
  		};
  	}
  / "return" _ ";" _ {
  		return {
  			type: "ReturnStatement",
  			argument: null,
			// non-estree:
			isjump: true,
  		};
  	}

///////////////////// EXPRESSIONS /////////////////////

/*
Expressions are defined recursively, such that e.g. a unary_expression will satisfy the requirement of a binary_expression. The rule hierarchy looks like this:

	expression is assignment_expression
	assignment_expression is itself, or true_expression
	true_expression is conditional_expression, or binary_expression
	binary_expression is itself, or unary_expression
	unary_expression is itself, or postfix_expression
	postfix_expression is itself, or primary_expression
	primary_expression is IDENTIFIER, LITERAL, or (nested expression)
*/

expression
  = assignment_expression

/*
	Note that GenExpr supports multiple assignments & multiple return values (MRVs).
	The challenge to convert to JS AST is that MRVs are not strictly supported. The nearest we can get is ArrayExpression.

	Simple cases of
	a, b = 1, 2;
	can be converted to JS as
	a = 1; b = 2;
	Missing values on the lhs mean respective values on the rhs are ignored.
	a, b = 1, 2, 3; // 3 is ignored
	Missing values on the rhs mean than the lhs receives a value of zero.
	a, b, c = 1, 2; // implies c = 0;

	Also, GenExpr syntax stipulates that functions can return multiple items
	but in a chain of assignments, only the last item on the rhs will be interpreted in this way; other items on the rhs will be truncated to a single value. So,
	a, b, c = cartopol(x, y), cartopol(z, w);
	becomes:
	a = cartopol(x, y); b, c = cartopol(z, w);

	A post-parse conversion is needed to resolve these correctly.

*/
assignment_expression
  = multiple_assignment

multiple_assignment
  = left:left_hand _ operator:assignment_operator _ right:true_expression_list {
		if (left.length > 1) {
			left = {
				type: "ArrayPattern",
				elements: left
			};
		} else {
			left = left[0];
		}
		if (right.length > 1) {
			right = {
				type: "ArrayExpression",
				elements: right
			};
		} else {
			right = right[0];
		}

		return {
			type:     "AssignmentExpression",
			operator: operator,
			left:     left,
			right:    right,
		};
    }
  / true_expression

single_assignment
  = left:unary_expression _ operator:assignment_operator _ right:unary_expression {
  		return {
			type:     "AssignmentExpression",
			operator: operator,
			left:     left,
			right:    right,
		};
  }

left_hand = first:unary_expression
			rest:(_ "," _ expr:unary_expression { return expr; })* {
	return [first].concat(rest);
}

assignment_operator = [-*+/%]? "=" { return text(); }

true_expression_list = first:true_expression
			 rest:(_ "," _ expr:true_expression { return expr; })* {
	return [first].concat(rest);
}

// similar to assignment, but results in VariableDeclaration instead:

single_declaration_expression
  = id:IDENTIFIER _ "=" _ init:true_expression {
		return {
            "type": "VariableDeclaration",
            "declarations": [
                {
                    "type": "VariableDeclarator",
                    "id": id,
                    "init": init
                }
            ],
            "kind": "let"
        };
}

multi_declaration_expression
  = firstid:IDENTIFIER restid:(_ "," _ expr:IDENTIFIER)*
	_ "=" _
	firstinit:true_expression restinit:(_ "," _ expr:true_expression)*
	{
		let ids = [firstid].concat(restid);
		let inits = [firstinit].concat(restinit);
		let decls = [];
		for (let i=0; i<ids.length; i++) {
			decls[i] = {
				"type": "VariableDeclarator",
				"id": ids[i],
				"init": inits[i]
			}
		}

		return {
            "type": "VariableDeclaration",
            "declarations": decls,
            "kind": "let"
        };
}


// use true_expression rule wherever an assignent_expression would not be legal
// e.g.
true_expression
 = conditional_expression
 / binary_expression

conditional_expression
  = test:binary_expression _ "?" _
  	t:expression _ ":" _
  	f:expression {
  	  return {
        type:       "ConditionalExpression",
        test:       test,
        consequent: t,
        alternate:  f
      };
  }

binary_expression
  = first:unary_expression rest:binary_right+ {
  		return normalizeBinaryExpression(first, rest);
  }
  / unary_expression

binary_right
  = _ op:binary_operator _ val:unary_expression {
  	return {
  		op: op,
		val: val,
	};
  }

// watch out for a greedy parser -- that's why <= is listed before <
binary_operator
  = "<=p" / ">=p" / "<p" / ">p" / "<=" / ">=" / "<<" / ">>"
  / "==p" / "!=p" / "==" / "!=" / "&&" / "||" / "^^"
  / [-/+*%^&|<>]

unary_expression
  = postfix_expression
  / operator:[-!~] _ expr:unary_expression {
  	return {
        type:     "UnaryExpression",
        operator: operator,
        argument: expr,
        prefix:   true
      };
  }

postfix_expression
  = object:primary_expression field:(
  	computed_member_expression
  	/ literal_member_expression
  	/ call_member_expression
  )+ {
  		// now restructure here:
  		while (field.length > 0) {
  			if (field[0].type == "CallExpression") {
  				field[0].callee = object;
  			} else {
  				field[0].object = object;
  			}
  			object = field.shift();
  		}
  		return object;
  }
  / primary_expression

computed_member_expression
  = _ "[" _ field:true_expression _ "]" {
  		return {
  		  type: "MemberExpression",
  		  computed: true,
          property: field,
        };
  }
literal_member_expression
  = _ "." _ field:IDENTIFIER {
  		return {
  		  type: "MemberExpression",
  		  computed: false,
          property: field,
        };
  }

call_member_expression
  = _ "(" _ args:call_expression_arguments? _ ")" {
  		return {
          type:     "CallExpression",
          arguments: args || [],
        };
  }

call_expression_arguments
  = arguments

arguments = first:argument
            rest:(_ "," _ expr:argument { return expr; })* {
	// TODO: separate out the named arguments?
	return [first].concat(rest);
}

argument
  = key:IDENTIFIER _ "=" _ expr:true_expression {
	  return {
		type: "AssignmentExpression",
		operator: "=",
		left: key,
		right: expr,
		// non-estree:
		gen_kind: "attribute"
	  }
	}
	/ true_expression

primary_expression
  = IDENTIFIER
  / LITERAL
  / "(" _ expr:expression _ ")" { return expr; } // !!

// list of words that can't be used for identifiers
// because the grammar would break if they were
// (keep this list as short as possible)
// Infinity, NaN, ?
identifier_grammar_reserved
  = ("return"
  / "continue"
  / "break"
  / "true"
  / "false"
  / "null")  !([_0-9a-z]i)


IDENTIFIER
  = (!identifier_grammar_reserved)
    first:[_a-z]i
    rest:[_0-9a-z]i*
    {
      	return {
      		type: "Identifier",
      		name: first + rest.join(""),
      		raw: text()
      	};
    }

///////////////////// LITERALS /////////////////////

LITERAL
  = LITERAL_NULL / LITERAL_BOOL
  / LITERAL_FLOAT / LITERAL_INTEGER
  / LITERAL_STRING


LITERAL_INTEGER "Literal.Integer"
  = "0x"i $[0-9a-f]i+ {
      return {
      	type: "Literal",
      	value: parseInt(text(), 16),
      	raw: text(),
      	// non-estree:
      	gen_kind: "integer",
      };
     }
 // / [+-]? DecimalIntegerLiteral {
  / DecimalIntegerLiteral {
      return {
      	type: "Literal",
      	value: +text(),
      	raw: text(),
      	// non-estree:
      	gen_kind: "integer",
      };
     }

DecimalIntegerLiteral = "0" / NonZeroDigit DecimalDigit*
NonZeroDigit = [1-9]
DecimalDigit = [0-9]

LITERAL_FLOAT "Literal.Float"
  //= [+-]? (
  = (
  	("." DecimalDigit+ ExponentPart?)
  	/ (DecimalIntegerLiteral "." DecimalDigit* ExponentPart?)
  	/ (LITERAL_INTEGER ExponentPart)
  ) {
      return {
      	type: "Literal",
      	value: parseFloat(text()),
      	raw: text(),
      	// non-estree:
      	gen_kind: "float",
      };
     }

ExponentPart = ("e"i [+-]? DecimalDigit+)

LITERAL_BOOL
  = "true"  {
  		return {
  			type: "Literal",
  			value: true,
  			// non-estree:
  			gen_kind: "bool"
  		};
  }
  / "false" {
  		return {
  			type: "Literal",
  			value: false,
  			// non-estree:
  			gen_kind: "bool"
  		};
  }

LITERAL_NULL
  = "null"  {
  		return {
  			type: "Literal",
  			value: null,
  			// non-estree:
  			gen_kind: "bool"
  		};
  	}

// nothing fancy here -- no multi-line strings, no escape chars, hexcode, regex etc....
LITERAL_STRING
  = (('"' chars:[^'"']* '"')
  / ("'" chars:[^"'"]* "'")) {
      	return {
      		type: "Literal",
      		value: text().substring(1, text().length-1),
      		raw: text(),
  			// non-estree:
  			gen_kind: "string",
      	};
    }




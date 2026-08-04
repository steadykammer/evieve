# evieve

A library of **GenExpr** audio code for [Cycling 74's Max/gen~](https://cycling74.com) environment in 'Max Package' format. **Requires Max 9.2.0 or later**.

By Pete Dowling a.k.a. 'stkr'. **© Peter Dowling 2026,  GPL v3**. Contact: evieve at steadykammer dot net

This repo is *not* the 'Max Package'. It is the source for the 'Max Package'. If you want to use `evieve` in `Max`, do not download this repo. Simply go to the 'File' menu in `Max`, choose 'Show Package Manager' and search for `evieve`. Then use the 'Install' button.

---

The `evieve` package aims to be as boring as possible - generic and easily reusable audio code but for using directly inside of '**.genexpr**' & **codebox** etc, organised into source files for usage via *require()*.

Some of the code has been (largely automatically) extrapolated to `gen~` and `MSP` abstractions and therefore might be useful in those environments as well.

About 50% of the code in `evieve` is original, the rest is ported from various other well known sources. Credits and code-specific licenses are given locally in code. Please respect the licencing. Otherwise defer to the `evieve` **GPL v3** license.

## Build

The repo is organised in 'Max Package' format so can be cloned to /Documents/Max 9/Packages/ or via alias or junction and worked with as if the actual package in `Max`.

Important folders:
* `code` : all .gendsp and .genexpr source code
* `source` : all .c and .ts source code

The `source` folder is organised in `c` and `ts` subfolders. All 'CMake' scripts have been scripted so as to access the top level folder so that the basic Cycling '74 build process works as expected.

Clone the repo *recursively* as it uses submodule to the [max-sdk-base](https://github.com/Cycling74/max-sdk-base).

### Build C

Pre-requisites:
  - CMake version >= 3.25
  - Xcode (macOS) or Visual Studio (Windows)

#### 1. Create a build directory to store build artifacts and IDE files

```shell
mkdir build
cd build
```

#### 2. Generate the projects

You can run `cmake --help` to get a list of generators available for your
platform. On macOS, the typical choice is Xcode, and on Windows, it is usually
Visual Studio.

On macOS:
```shell
cmake -G Xcode ..
```

On Windows:
```shell
cmake -G "Visual Studio 17 2022" ..
```
...or whatever your current Visual Studio is.

#### 3. Build the projects

You can open the IDE projects and build from the Xcode or Visual Studio
interface.

Alternatively, you can build from the command line, passing `cmake` the path to
the `/build` directory after `--build`.

```shell
cmake --build . --config Debug
cmake --build . --config Release
```

The above instructions will result in the `externals` folder populated at the top level of the project.

### Build TS

Pre-requisites:
  - TypeScript version 5.9.3 (`Max` does not work with TypeScript 7.0.0 or later)
  - NodeJs version 22.18 (or later?)
  - Max 9.2.0 or later

`/source/ts/evievev8` creates .js v8 code for distribution in the Package. `/source/ts/evievenode` creates nodejs code only for the purposes of *automatic package documentation* for the distribution

#### Both folders
```shell
npm install
```
```shell
npm run build
```

#### Automatic Package Documentation

To be honest, this should only be used by me as it is not in a good state, but...
Documentation is built via the `/source/ts/evievenode/doc/evievedoc.maxpat` `Max` Patcher.

Instructions are in the patcher. #1 parses all files and creates entries in the JSONs at the `/source/ts/evievenode/config/` folder. These are then used to create documentation based on preferences per object in those files. Various JSON files can be human edited for content, but rebuilding always leaves edited data in place.

Building the package itself is also done via a script run from this Patcher. Package building takes care of only needed content ending up in the Max Package.


### Thanks to...
Alex Harker, Rodrigo Constanzo, James Bradbury, Michael Hartung, Tom Whiston, Vincent Goudard, Matt Jackson, Maurizio Giri, Volker Böhm, Martijn Zwartjes, Martin Vicanek, Richard Dudas, Graham Wakefield, Joshua Kit Clayton.


### Stats

| language | files | code | comment | blank | total |
| :--- | ---: | ---: | ---: | ---: | ---: |
| GenExpr | 54 | 16,757 | 6,308 | 4,229 | 27,294 |


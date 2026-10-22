// munit.config.js: the mUnit handler's configuration for this suite. The
// [mUnit.harness] in runTests.maxpat reads it each time the patch opens. Every key
// is optional; the commented ones show their defaults. See "Configuration" in
// the mUnit README.

/** @type {import("libmunit").HandlerConfig} */
const config = {
  resultFormatter: "Json",             // or "JUnit" for CI, "Html" for a browser, or a list
  logFormatter: "Txt",
  outputDir: "./logs",                 // relative to this file
  // runFolder: false,                 // true: a timestamped subfolder per run
  // settleMs: 1000,                   // quiet time that ends the suite
  // suiteTimeout: 300000,             // fail what hasn't finished by then; 0 disables
  // teardownMs: 2000,                 // how long to wait for [mUnit.teardown]
  // ignoreConsoleErrors: true,        // false: an error in the Max console fails the suite
  // logOutputFilters: [],             // regexes for lines to leave out of log.txt
  // logObjectFilters: ["node.script"],
  // dsp: { driver: "NonRealTime", sr: 48000, vs: 64 },
  // takeReferences: false,
  // forbidOnly: false,
}
module.exports = config

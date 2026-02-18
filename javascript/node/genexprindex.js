"use strict";
import max from "max-api-or-nah";
import { homedir } from "os";
import path from "path";
import config from "../config/evievedoc.config.json";
const devDataPath = config.referenceFiles.genExpr.copyto;
const userDataPath = resolveTilde("~/Documents/Max 9/Packages/evieve/docs/refpages/evieve-genexpr/genexpr-data");
const userPathRelative = path.resolve(`${__dirname}/../../docs/refpages/evieve-genexpr/genexpr-data`);
max.addHandler("test_paths", () => {
  testy();
});
function testy() {
  void max.post(`${devDataPath}`);
  void max.post(`${userDataPath}`);
  void max.post(`${userPathRelative}`);
}
function resolveTilde(path2) {
  if (!path2 || typeof path2 !== "string") {
    return "";
  }
  if (path2.startsWith("~/") || path2 === "~") {
    return path2.replace("~", homedir());
  }
  return path2;
}

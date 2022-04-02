/* eslint-env node */
/* eslint-disable sort-keys */

const HOME = require("os").homedir();
//const SRC = `${HOME}/src.eslint`;
const SRC = `.`;

//const eslintRules = require(`${SRC}/eslintRules`);
const eslintRules = require(`${SRC}/eslintRules.js`);
//const { indentRuleOff } = require(`${SRC}/indentRule`);
const { indentRuleOff } = require(`${SRC}/indentRule.js`);
//const tsRules = require(`${SRC}/tsRules`);
const tsRules = require(`${SRC}/tsRules.js`);
const typescript = require("typescript");

//console.log("__dirname", __dirname);

const tsRulesForSvelte = (function () {
  const rules = { ...tsRules };

  //delete rules["@typescript-eslint/indent"];
  rules ["@typescript-eslint/indent"] = indentRuleOff;

  return rules;
}) ();

const parserOptions = {
  ecmaFeatures: {
    //impliedStrict: true,
  },
  //ecmaVersion: 2020, // automatically set by env.es2020
  sourceType: "module",
};

const babelParserOptions = {
  babelOptions: {
    configFile: `${__dirname}/babel.config.js`,
  },
  parser: "@babel/eslint-parser",
};

const babelParserOptionsCombined = {
  ...parserOptions,
  ...babelParserOptions,
};

const tsParserOptions = {
  extraFileExtensions: [".svelte"],
  //parser: "@typescript-eslint/parser",
  project: `${HOME}/tsconfig.json`,
  tsconfigRootDir: HOME,
};

module.exports = {
  env: {
    //browser: true,
    es6: true,
    es2020: true,
  },
  extends: [
    "eslint:recommended",
  ],
  globals: {
    Atomics: "readonly",
    SharedArrayBuffer: "readonly",
    globalThis: "readonly",
  },
  parserOptions,
  //parserOptions: babelParserOptionsCombined,
  plugins: [
    //"@babel",
    //"vue",
    "html",
    "svelte3",
    "@typescript-eslint",
  ],
  overrides: [
    { // svelte files
      extends: [
        "plugin:@typescript-eslint/eslint-recommended",
        "plugin:@typescript-eslint/recommended",
        "plugin:@typescript-eslint/recommended-requiring-type-checking",
      ],
      files: ["*.svelte"],
      processor: "svelte3/svelte3",
      parser: "@typescript-eslint/parser",
      parserOptions: tsParserOptions,
      //rules: tsRules,
      rules: tsRulesForSvelte,
    },
    { // ts files
      extends: [
        "plugin:@typescript-eslint/eslint-recommended",
        "plugin:@typescript-eslint/recommended",
        "plugin:@typescript-eslint/recommended-requiring-type-checking",
      ],
      files: ["**/*.ts"],
      //parser: "@typescript-eslint/parser",
      parserOptions: tsParserOptions,
      rules: tsRules,
    },
    //{ // vue files
    //extends: [
    //"plugin:vue/essential",
    //"plugin:vue/recommended",
    //],
    //files: ["**/*.vue"],
    ////parser: "vue-eslint-parser",
    ////parserOptions: {
    ////parser: "vue-eslint-parser",
    ////},
    //rules: vueRules,
    //},
  ],
  root: true,
  rules: eslintRules,
  settings: {
    "html/indent": "0",
    "html/report-bad-indent": "warn",
    //"svelte3/ignore-styles": () => true,
    //"svelte3/named-blocks": true,
    "svelte3/typescript": typescript,
  },
};


/* eslint-env node */

const sortOrderSmacss = require ("stylelint-config-property-sort-order-smacss/generate");

const propertiesOrder = [
  {
    "emptyLineBefore": "always",
    "groupName": "ScssModules",
    "noEmptyLineBetween": true,
    "properties": [
      "composes",
    ],
  },
  ...sortOrderSmacss ({
    "emptyLineBefore": "threshold",
    //"emptyLineBefore": "always",
    "noEmptyLineBetween": true,
  }),
];
//console.log ("propertiesOrder", propertiesOrder);

module.exports = {
  "extends": [
    "stylelint-config-standard",
    "stylelint-config-sass-guidelines",
    //"stylelint-config-property-sort-order-smacss",
  ],
  "plugins": [
    "stylelint-order",
    "stylelint-scss",
  ],
  "rules": {
    "alpha-value-notation": "number",
    "at-rule-name-newline-after": "always-multi-line",
    "at-rule-name-space-after": "always-single-line",
    "at-rule-no-vendor-prefix": true,
    "at-rule-semicolon-newline-after": "always",
    "block-closing-brace-empty-line-before": "never",
    "block-closing-brace-newline-after": "always",
    "block-closing-brace-newline-before": "always-multi-line",
    "block-closing-brace-space-before": "always-single-line",
    "block-no-empty": true,
    "block-opening-brace-newline-after": "always-multi-line",
    "block-opening-brace-space-after": "always-single-line",
    "block-opening-brace-space-before": "always",
    "color-hex-case": "lower",
    "color-named": null,
    "color-no-invalid-hex": true,
    "declaration-bang-space-after": "never",
    "declaration-bang-space-before": "always",
    "declaration-block-no-shorthand-property-overrides": true,
    "declaration-block-semicolon-newline-after": "always-multi-line",
    "declaration-block-semicolon-newline-before": "never-multi-line",
    "declaration-block-semicolon-space-after": "always-single-line",
    "declaration-block-semicolon-space-before": "never",
    "declaration-block-single-line-max-declarations": 1,
    "declaration-block-trailing-semicolon": "always",
    "declaration-colon-newline-after": "always-multi-line",
    "declaration-colon-space-after": "always",
    "declaration-colon-space-before": "never",
    "declaration-empty-line-before": null,
    //"declaration-empty-line-before": [
      //"always",
      //{
        //"except": [
          //"first-nested",
        //],
        //"ignore": [
          //"after-comment",
          //"after-declaration",
          //"inside-single-line-block",
        //],
      //},
    //],
    "font-family-name-quotes": "always-where-recommended",
    "font-family-no-duplicate-names": true,
    "font-family-no-missing-generic-family-keyword": true,
    "font-weight-notation": "named-where-possible",
    "function-calc-no-invalid": true,
    "function-calc-no-unspaced-operator": true,
    "function-comma-space-after": "always-single-line",
    "function-comma-space-before": "never-single-line",
    "function-linear-gradient-no-nonstandard-direction": true,
    "function-max-empty-lines": 0,
    "function-name-case": "lower",
    "function-parentheses-newline-inside": "always-multi-line",
    //"function-parentheses-space-inside": "always-single-line",
    "function-url-quotes": ["always", { "except": ["empty"] }],
    "function-whitespace-after": "always",
    "keyframe-declaration-no-important": true,
    "length-zero-no-unit": true,
    "max-empty-lines": 2,
    "max-nesting-depth": 2,
    "media-feature-name-no-unknown": true,
    "media-feature-name-no-vendor-prefix": true,
    "no-descending-specificity": true,
    "no-duplicate-at-import-rules": true,
    "no-duplicate-selectors": true,
    "no-empty-source": null,
    "no-extra-semicolons": true,
    "no-missing-end-of-source-newline": true,
    "no-unknown-animations": true,
    "number-leading-zero": "always",
    "order/order": [
      [
        //{
          //type: "rule",
          //selector: "composes",
        //},
      ],
      {
        //"unspecified": "bottom",
      },
    ],
    "order/properties-alphabetical-order": null,
    //"order/properties-alphabetical-order": true,
    "order/properties-order": [
      propertiesOrder,
      {
        "emptyLineBeforeUnspecified": "always",
        //"emptyLineMinimumPropertyThreshold": 2,
        //"emptyLineMinimumPropertyThreshold": 3,
        "emptyLineMinimumPropertyThreshold": 4,
        //"unspecified": "bottom",
        "unspecified": "bottomAlphabetical",
      },
    ],
    "property-case": "lower",
    "property-no-unknown": [
      true,
      {
        "ignoreProperties": [
          //"compose-with",
          "composes",
        ],
        //ignoreSelectors: [
          //":export",
          ///^:import/,
        //],
      },
    ],
    "property-no-vendor-prefix": true,
    "scss/at-mixin-argumentless-call-parentheses": "always",
    //"scss/at-mixin-named-arguments": "always",
    "scss/at-mixin-named-arguments": [
      "always",
      {
        "ignore": ["single-argument"],
      },
    ],
    "scss/at-mixin-parentheses-space-before": "always",
    //"scss/at-mixin-pattern": "",
    "scss/at-rule-no-unknown": true,
    //"scss/at-rule-no-unknown": [
      //true,
      //{
        //ignoreAtRules: ["value"],
      //},
    //],
    "scss/dollar-variable-colon-newline-after": "always-multi-line",
    "scss/dollar-variable-colon-space-after": "always-single-line",
    "scss/dollar-variable-colon-space-before": "never",
    "scss/dollar-variable-first-in-block": [
      true,
      {
        "except": [
          "function",
          "loops",
          "root",
        ],
        "ignore": ["comments", "imports"],
      },
    ],
    "scss/dollar-variable-no-missing-interpolation": true,
    "scss/dollar-variable-pattern": "",
    "scss/function-color-relative": true,
    "scss/map-keys-quotes": "always",
    "scss/no-duplicate-mixins": true,
    "scss/no-global-function-names": true,
    "scss/operator-no-unspaced": true,
    "selector-attribute-brackets-space-inside": "never",
    "selector-attribute-operator-space-after": "never",
    "selector-attribute-operator-space-before": "never",
    "selector-attribute-quotes": "always",
    "selector-class-pattern": "",
    "selector-combinator-space-after": "always",
    "selector-combinator-space-before": "always",
    "selector-descendant-combinator-no-non-space": true,
    "selector-max-empty-lines": 0,
    "selector-no-vendor-prefix": true,
    "selector-pseudo-class-case": "lower",
    "selector-pseudo-class-no-unknown": [
      true,
      {
        ignorePseudoClasses: [
          //"export",
          //"import",
          "global",
          //"local",
          //"external",
        ],
      },
    ],
    "selector-pseudo-element-case": "lower",
    "selector-pseudo-element-colon-notation": "double",
    "selector-pseudo-element-no-unknown": true,
    "selector-type-no-unknown": [
      true,
      {
        "ignore": [
          "custom-elements",
        ],
        //ignoreTypes: [
          //"from",
        //],
      },
    ],
    "shorthand-property-no-redundant-values": true,
    "string-no-newline": true,
    "string-quotes": "double",
    "unit-case": "lower",
    "unit-no-unknown": true,
    "value-keyword-case": [
      "lower",
      {
        "ignoreProperties": [
          "composes",
        ],
      },
    ],
    "value-list-comma-newline-after": "always-multi-line",
    "value-list-comma-space-after": "always-single-line",
    "value-list-comma-space-before": "never",
    "value-list-max-empty-lines": 1,
    "value-no-vendor-prefix": true,
  },
};


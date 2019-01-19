# jschema_py36
A JSON Schema validator

## JSON Schema

Website: [https://json-schema.org/](https://json-schema.org/)

Latest version as of Jan 16, 2019: draft-07

- JSON Schema: A Media Type for Describing JSON Documents
-- [https://json-schema.org/latest/json-schema-core.html](https://json-schema.org/latest/json-schema-core.html)

- JSON Schema Validation: A Vocabulary for Structural Validation of JSON
-- [https://json-schema.org/latest/json-schema-validation.html](https://json-schema.org/latest/json-schema-validation.html)

*Refer to website for complete information*

## Gherkin syntax for functional testing

Question: can we transcribe the JSON Schema Test Suite in the Gherkin Syntax?
[https://github.com/json-schema-org/JSON-Schema-Test-Suite](https://github.com/json-schema-org/JSON-Schema-Test-Suite)

Why? To make the same tests (or behavior descriptions) available accross different languages; specification is language-agnostic => acceptance tests should be language-agnostic as well.

[https://docs.cucumber.io/gherkin/](https://docs.cucumber.io/gherkin/)

## Secondary goals

- Quality metrics (code coverage, linting, etc)
- Continuous delivery workflow at minor|patch level

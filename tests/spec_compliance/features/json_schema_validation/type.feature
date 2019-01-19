# source: https://github.com/json-schema-org/JSON-Schema-Test-Suite/blob/master/tests/draft7/type.json
Feature: Keyword validation - type

    Scenario: integer type matches integers

        Given the schema provided in "schemas/type.json"

        When the envaluating the json in <path>

        Then the result should be <result>

            | path                  | result   |
            | payloads/type.json#/0 | accepted |
            | payloads/type.json#/1 | rejected |
            | payloads/type.json#/2 | rejected |
            | payloads/type.json#/3 | rejected |
            | payloads/type.json#/4 | rejected |
            | payloads/type.json#/5 | rejected |
            | payloads/type.json#/6 | rejected |
            | payloads/type.json#/7 | rejected |

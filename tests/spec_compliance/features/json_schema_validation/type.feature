# source: https://github.com/json-schema-org/JSON-Schema-Test-Suite/blob/master/tests/draft7/type.json
Feature: Keyword validation - type

    Scenario: integer type matches integers

        Given the schema provided in "schemas/type.json"
        And the json in <path>

            | path                  |
            | payloads/type.json#/0 |
            | payloads/type.json#/1 |
            | payloads/type.json#/2 |
            | payloads/type.json#/3 |
            | payloads/type.json#/4 |
            | payloads/type.json#/5 |
            | payloads/type.json#/6 |
            | payloads/type.json#/7 |

        When we evaluate the json against the schema

        Then the result should be <result>

            | result   |
            | accepted |
            | rejected |
            | rejected |
            | rejected |
            | rejected |
            | rejected |
            | rejected |
            | rejected |

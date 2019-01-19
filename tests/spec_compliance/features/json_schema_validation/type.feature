# source: https://github.com/json-schema-org/JSON-Schema-Test-Suite/blob/master/tests/draft7/type.json
Feature: Keyword validation - type

    Scenario: integer type matches integers

        Given the schema <matches_integers>
        And the json <json>

        When the <parser> runs

        Then the result should be <valid_or_invalid>

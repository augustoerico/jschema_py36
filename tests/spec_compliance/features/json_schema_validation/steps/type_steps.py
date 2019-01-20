import simplejson as json
from behave import given, when, then

relative_path = 'tests/spec_compliance/features/json_schema_validation/'


@given('the schema provided in "{schema}"')
def given_the_schema_provided(context, schema):
    with open(relative_path + schema) as f:
        context.schema = json.load(f)


@given('the json in <path>')
def given_the_json(context):
    payload = None
    for row in context.table:
        path, i = str(row['path']).split('#/')
        i = int(i)
        if not payload:
            with open(relative_path + path) as f:
                payload = json.load(f)
            context.payloads = [payload[i]]
        else:
            context.payloads = [*context.payloads, payload[i]]


@when('we evaluate the json against the schema')
def when_we_evaluate_the_json(context):
    context.results = [
        "nope"
        for _ in context.payloads
    ]


@then('the result should be <result>')
def then_the_result_should_be(context):
    for i, row in enumerate(context.table):
        assert row['result'] == context.results[i]

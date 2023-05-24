Description: Test demoing VIVIDUS capabilities for REST API

Scenario: Create new user
Given request body:
{
  "name": "morpheus",
  "job": "leader"
}
When I set request headers:
|name        |value           |
|Content-Type|application/json|
When I execute HTTP POST request for resource with URL `https://reqres.in/api/users`
Then `${responseCode}` is equal to `201`

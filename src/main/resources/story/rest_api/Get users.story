Description: Test demoing VIVIDUS capabilities for REST API

Scenario: Verify list of users
When I execute HTTP GET request for resource with URL `https://reqres.in/api/users?page=2`
Then `${responseCode}` is equal to `200`
Then JSON element value from `${response}` by JSON path `$.total` is equal to `12`

Scenario: Verify list of users
When I execute HTTP GET request for resource with URL `https://reqres.in/api/users/2`
Then `${responseCode}` is equal to `200`
Then JSON element value from `${response}` by JSON path `$.data.first_name` is equal to `Janet`

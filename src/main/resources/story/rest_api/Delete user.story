Description: Test demoing VIVIDUS capabilities for REST API

Scenario: Verify list of users
When I execute HTTP DELETE request for resource with URL `https://reqres.in/api/users/2`
Then `${responseCode}` is equal to `204`

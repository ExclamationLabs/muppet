# Muppet

Muppet is a ProvisionIAM virtualization tool using [WireMock](https://wiremock.org/).  It's prime purpose is to accept RESTful
requests and provide virtualized responses to help test Base Connector integrations.  Muppet's benefits are as follows:

- Allow for stable integration tests for Base Connectors and Onboarding Platform (for RESTful connectors)
- Ensure Base Connector components such as Authenticators, Drivers, Invocators and Adapters are covered by tests
and working together as expected
- Mock OAuth2 and other authentication strategies and provide HTTP requests/responses without needing confidential customer
configuration fields or returning sensitive customer data
- Provide small sets of fictional response data that is predictable and not prone to change
- Provide code-free setup so any team member that is proficient with JSON and has a solid understanding of HTTP requests and responses
will be able to add and update mocks for Connectors.

# Quick Start Guide

Muppet is structured to use Docker for shipping and deployment.  For now it runs under port 8080, but this is configurable.

See [Wiremock Documentation](https://wiremock.org/docs/stubbing/) for creating and maintaining stubs.

For each Connector being mocked, a new sub-folder should be created under `mappings` and also under `__files`.  You can also create additional
sub-folder levels as needed.

A simple `/health` endpoint is provided to assure that Muppet can be reached and is ready to receive requests.
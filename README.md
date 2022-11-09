# Deploy Listmonk to Scalingo

This is a minimalistic setup to get [listmonk][listmonk] running on [Scalingo][scalingo].

Listmonk is a self-hosted newsletter and Scalingo is a Heroku alternative.

The code here mostly glues together the official listmonk buildpack for Heroku with the required environment
variables for Scalingo.

## Getting Started

### Requirements

Set up a new Scalingo project with:

* At least one web worker
* Postgres

### Running It

1. Clone (or better, fork) this repository to your own GitHub account.
2. Link this new repository to your new Scalingo project from above.
3. Trigger a deployment.


<!-- Links -->

[listmonk]: https://listmonk.app
[scalingo]: https://scalingo.com

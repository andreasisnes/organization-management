## Prerequisites
* Infrastructure has created following items for each team
  * App reggistration for environemtn with priviliged azure role IAM `Contributor`, `User Access Administrator` for subscriptions and maybe som Entra roles`
    * Subscriptions for each environment `dev`, `test`, `staging`, `prod` 
* GitHub App
  * Generated Private Key `GITHUB_APP_PRIVATE_KEY` must be added as repository variable for the team core repository
  * Must have privilige to `read/write` Variables, Secrets, and Environments

* GitHub Team, can be parameterized when creating these
  * Developers
  * Stakeholders

## Questions

## Pros
* No team dependencies

## Caveats
* Infrastructure gets less control of core functionality
* When creating a repository you have to manually install the GitHub app
    * Why? If the app can install itself, it means it can install itself for any repository, thus team seperations is not maintained.
* Number of GitHub apps will increase. Hard to maintain access to these manually, needs automation!
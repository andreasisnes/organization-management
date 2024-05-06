
## Questions
* Is there upper limit for number of containers in a storage account?
  * no, it's unlimited
* How much responsibility should created apps have?
  * As for now they only receive the Storage Blob Owner role on a container, but no role on a subscription for deploying resources to Azure.

## Pros
* Fine grained of access to containers. A `repository/environment` can never write or read another `teams/repository/environment` terraform state, but two repositories that are owned by the same team have access. 
* No secrets or vaults needed, everything is managed through machine identities

## Caveats
* Container can max contain 64 chars, with prefix `github-` and suffix `-at21` allows repositories to have max length of max `51` chars. repo `altinn-access-management-frontend` has 33 chars. Can create workarounds
* Number of GitHub apps will increase. Hard to maintain access to these manually, needs automation!
* Difficult to create projects that diverges from domain's design
* As infrastructure owns the repository, developers needs to create a PR's resulting in Team dependencies.


## Docs
* [Authenticate as app](https://docs.github.com/en/apps/creating-github-apps/authenticating-with-a-github-app/authenticating-as-a-github-app)
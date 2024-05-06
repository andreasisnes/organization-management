
## Questions
* Is there upper limit for number of containers in a storage account `no`
* Multiple terraform projects in repo? terraform workspace

## Pros
* Fine grained of access to containers. A `team:environment` can never write or read another `team:environment` terraform state, even if it's the contains persist in the same storage container. 
* No secrets or vaults needed, everything is managed through machine identities and their role

## Caveats
* Container can max contain 64 chars, with prefix `github-` and suffix `-at21` allows repositories to have max length of max `51` chars. repo `altinn-access-management-frontend` has 33 chars.
* Number of OIDC apps will skyrock. Hard to maintain access to these manually, needs automation!
* Difficult to create new setups that diverges from the domain's design

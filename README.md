An image to run [renovate](https://github.com/renovateapp/renovate) as an hourly cron job

### configuration

#### required

platform type via $PLATFORM
renovate cli params via $PARAMS
repositories via $REPOSITORIES

#### optional

[configuration](https://renovateapp.com/docs/configuration-reference/configuration-options) can be passed via a `docker config` with docker 17.06+ (compose format 3.3+) or via an env var (snake\_cased UPPERCASED with RENOVATE\_ prefix, for example automergeType option becomes RENOVATE_AUTOMERGE_TYPE)

#### example

```yaml
version: '2'
services:
  renovate:
    image: weboaks/renovate
    environment:
      # - PLATFORM="github|gitlab"
      # - PARAMS=""
      # - REPOSITORIES=""
      # - GITHUB_TOKEN=""
      # - GITLAB_TOKEN=""
      # - GITLAB_ENDPOINT=https://gitlab.mydomain/api/v3/
```
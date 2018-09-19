# circle-ci-build-image
clojure / boot / node / sassc / aws-cli

creates an image to use as our base on circle-ci.

Images are published to `docker hub` and can be seen here: https://hub.docker.com/r/fydevs/circleci-base-build/tags/

## Building a new image

- run `make build`
- if it's successful, will have a new `fydevs/circleci-base-build:latest` image on your local
- check it out, play with it, see if that's ok!

## push a new version

- run `make`
- build and push will take place, and the resulting build will be tagged with the current timestamp and pushed to docker hub
- don't forget to update `config.yml` in the `.circleci` folder

# circle-ci-build-image
clojure / [boot | tools-deps] / node / sassc / aws-cli

creates boot and tools-deps images to use as our base on circle-ci.

Images are published to `AWS ECR` and can be seen here: https://eu-west-1.console.aws.amazon.com/ecr/repositories/private/243905809578/circleci-build-image?region=eu-west-1

## Building a new image

- `cd boot` or `cd tools-deps`
- run `make build`
- if it's successful, will have a new `[boot|tools-deps|vespa]:GIT_SHA` image on your local
- check it out, play with it, see if that's ok!

## push a new version

- make sure you've built the image, see [Building a new image](#building-a-new-image)
- `cd boot` or `cd tools-deps` 
- run `make push`
- if getting `no basic auth credentials` error, run `aws ecr get-login-password --region eu-west-1 | docker login --username AWS --password-stdin 243905809578.dkr.ecr.eu-west-1.amazonaws.com`
- build and push will take place, and the resulting build will be tagged with the current git sha1 and pushed to ECR
- don't forget to update `config.yml` in the `.circleci` folder

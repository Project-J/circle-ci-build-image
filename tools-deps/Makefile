SHA1=`git rev-parse HEAD`

build:
	docker build -t fydevs/circleci-base-build/tools-deps .

push:
	docker tag fydevs/circleci-base-build/tools-deps:latest docker.io/fydevs/circleci-base-build:tools-deps-$(SHA1)
	docker push fydevs/circleci-base-build:tools-deps-$(SHA1)

default:
	$(MAKE) build
	$(MAKE) push

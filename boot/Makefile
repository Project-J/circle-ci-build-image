NOW=`date +%s`

build:
	docker build . -t fydevs/circleci-base-build

push:
	docker tag fydevs/circleci-base-build:latest docker.io/fydevs/circleci-base-build:$(NOW)
	docker push fydevs/circleci-base-build:$(NOW)

default:
	$(MAKE) build
	$(MAKE) push

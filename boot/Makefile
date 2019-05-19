SHA1=`git rev-parse HEAD`

build:
	docker build -t fydevs/circleci-base-build/boot .

push:
	docker tag fydevs/circleci-base-build/boot:latest docker.io/fydevs/circleci-base-build:boot-$(SHA1)
	docker push fydevs/circleci-base-build:boot-$(SHA1)

default:
	$(MAKE) build
	$(MAKE) push

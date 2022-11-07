SHA1=`git rev-parse HEAD`

build:
	docker build -t fydevs/circleci-base-build/vespa .

push:
	docker tag fydevs/circleci-base-build/vespa:latest 243905809578.dkr.ecr.eu-west-1.amazonaws.com/circleci-build-image:vespa-$(SHA1)
	docker push fydevs/circleci-base-build:vespa-$(SHA1)

default:
	$(MAKE) build
	$(MAKE) push

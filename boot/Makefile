SHA1=`git rev-parse HEAD`
ECR_REPO=243905809578.dkr.ecr.eu-west-1.amazonaws.com/circleci-build-image

build:
	docker build -t vespa-${SHA1} .

push:
	docker tag boot-${SHA1} $(ECR_REPO):boot-$(SHA1)
	docker push $(ECR_REPO):boot-$(SHA1)

default:
	$(MAKE) build
	$(MAKE) push

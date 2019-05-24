FROM circleci/clojure:openjdk-11-tools-deps-1.10.0.411-node

USER root

RUN apt update
RUN apt install -y sassc make maven python-pip

### install awscli
RUN pip install --upgrade pip
RUN pip install awscli==1.16.101

USER circleci

### configure mvn
RUN mkdir -p /home/circleci/.m2
COPY --chown=circleci:circleci .m2 /home/circleci/.m2
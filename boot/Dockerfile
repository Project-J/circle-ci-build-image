FROM circleci/clojure:boot-2.8.1-node

USER root

RUN apt-get update
RUN apt-get install -y sassc make

### install awscli
RUN apt-get install python-pip
RUN pip install --upgrade pip
RUN pip install awscli==1.16.101

USER circleci
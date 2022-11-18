FROM cimg/clojure:1.11.1-openjdk-11.0-node

USER root

RUN apt update
RUN apt install -y sassc make maven python3-pip nodejs

### install awscli
RUN pip install --upgrade pip
RUN pip install awscli==1.16.101

### install aws-cdk
RUN npm install -g typescript

RUN npm install -g aws-cdk@1.181.0

RUN cdk --version

USER circleci

### configure mvn
RUN mkdir -p /home/circleci/.m2
COPY --chown=circleci:circleci .m2 /home/circleci/.m2

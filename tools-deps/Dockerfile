FROM cimg/clojure:1.11.1-openjdk-17.0-node

USER root

RUN apt update
RUN apt install -y sassc make python3-pip nodejs

### install awscli
RUN pip install --upgrade pip
RUN pip install awscli==1.40.18

### install aws-cdk
RUN npm install -g typescript

RUN npm install -g aws-cdk@1.204.0

RUN cdk --version

USER circleci

### configure mvn
RUN mkdir -p /home/circleci/.m2
COPY --chown=circleci:circleci .m2 /home/circleci/.m2

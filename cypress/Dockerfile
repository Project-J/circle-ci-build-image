FROM cimg/clojure:1.11.1-openjdk-17.0-browsers

USER root

RUN apt update
RUN apt install -y sassc make python3-pip nodejs

### install awscli
RUN pip install --upgrade pip
RUN pip install awscli==1.16.101

USER circleci

### configure mvn
RUN mkdir -p /home/circleci/.m2
COPY --chown=circleci:circleci .m2 /home/circleci/.m2
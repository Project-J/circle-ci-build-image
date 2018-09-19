FROM circleci/clojure:boot-2.8.1-node

USER root

RUN apt-get install -y awscli sassc make

USER circleci

FROM vespaengine/vespa:7.310.25

RUN yum -y install sudo java-11.0.8-openjdk-devel python-pip
RUN update-alternatives --set java /usr/lib/jvm/java-11-openjdk-11.0.8.10-0.el7_8.x86_64/bin/java
RUN update-alternatives --set javac /usr/lib/jvm/java-11-openjdk-11.0.8.10-0.el7_8.x86_64/bin/javac

# mvn
RUN curl -LO https://downloads.apache.org/maven/maven-3/3.5.4/binaries/apache-maven-3.5.4-bin.tar.gz
RUN tar xzf apache-maven-3.5.4-bin.tar.gz
RUN mkdir /usr/local/maven
RUN mv apache-maven-3.5.4/ /usr/local/maven/
RUN alternatives --install /usr/bin/mvn mvn /usr/local/maven/apache-maven-3.5.4/bin/mvn 1
RUN alternatives --set mvn /usr/local/maven/apache-maven-3.5.4/bin/mvn

# install awscli
RUN pip install --upgrade pip
RUN pip install awscli==1.16.101

# clojure
RUN curl -O https://download.clojure.org/install/linux-install-1.10.1.536.sh
RUN chmod +x linux-install-1.10.1.536.sh
RUN ./linux-install-1.10.1.536.sh

# add circleci user
RUN adduser circleci && \
    echo "circleci ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/circleci && \
    chmod 0440 /etc/sudoers.d/circleci

USER circleci
RUN ulimit -S -n 262145

### configure mvn
RUN mkdir -p /home/circleci/.m2
COPY --chown=circleci:circleci .m2 /home/circleci/.m2

# override vespa entrypoint
ENTRYPOINT []
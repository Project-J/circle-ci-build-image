FROM vespaengine/vespa:7.104.46

RUN yum -y install java-11-openjdk-devel python-pip
RUN update-alternatives --set java /usr/lib/jvm/java-11-openjdk-11.0.6.10-1.el7_7.x86_64/bin/java
RUN update-alternatives --set javac /usr/lib/jvm/java-11-openjdk-11.0.6.10-1.el7_7.x86_64/bin/javac

# mvn
RUN curl -LO http://www.eu.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
RUN tar xzf apache-maven-3.3.9-bin.tar.gz
RUN mkdir /usr/local/maven
RUN mv apache-maven-3.3.9/ /usr/local/maven/
RUN alternatives --install /usr/bin/mvn mvn /usr/local/maven/apache-maven-3.3.9/bin/mvn 1
RUN alternatives --set mvn /usr/local/maven/apache-maven-3.3.9/bin/mvn

# install awscli
RUN pip install --upgrade pip
RUN pip install awscli==1.16.101

# clojure
RUN curl -O https://download.clojure.org/install/linux-install-1.10.1.536.sh
RUN chmod +x linux-install-1.10.1.536.sh
RUN ./linux-install-1.10.1.536.sh

# override vespa entrypoint
ENTRYPOINT []
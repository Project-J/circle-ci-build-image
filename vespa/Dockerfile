FROM vespaengine/vespa:8.115.24

USER root

RUN yum -y --enablerepo=extras install epel-release-8-18.el8
RUN yum -y install sudo java-17-openjdk python3-pip
RUN update-alternatives --set java /usr/lib/jvm/java-17-openjdk-17.0.6.0.10-3.el8_7.x86_64/bin/java
RUN update-alternatives --set javac /usr/lib/jvm/java-17-openjdk-17.0.6.0.10-3.el8_7.x86_64/bin/javac

# update git
RUN dnf install -y wget unzip tar make gcc openssl-devel libcurl-devel expat-devel
RUN sudo dnf groupinstall -y "Development Tools"
RUN sudo dnf install -y libcurl-devel expat-devel
RUN yum -y remove git
WORKDIR "/usr/local"
RUN wget https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.36.1.tar.gz
RUN tar xzf git-2.36.1.tar.gz
WORKDIR "/usr/local/git-2.36.1"
RUN sudo make prefix=/usr/local all
RUN sudo make prefix=/usr/local install

# mvn
RUN curl -LO https://downloads.apache.org/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz
RUN tar xzf apache-maven-3.6.3-bin.tar.gz
RUN mkdir /usr/local/maven
RUN mv apache-maven-3.6.3/ /usr/local/maven/
RUN alternatives --install /usr/bin/mvn mvn /usr/local/maven/apache-maven-3.6.3/bin/mvn 1
RUN alternatives --set mvn /usr/local/maven/apache-maven-3.6.3/bin/mvn

# install awscli
RUN pip3 install --upgrade pip
RUN pip3 install awscli==1.16.101

# clojure
RUN curl -O https://download.clojure.org/install/linux-install-1.11.1.1182.sh
RUN chmod +x linux-install-1.11.1.1182.sh
RUN sudo ./linux-install-1.11.1.1182.sh

# add circleci user, we have to use the 'vespa' user otherwise vespa can't setup
RUN echo "vespa ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/vespa && \
    chmod 0440 /etc/sudoers.d/vespa

### configure mvn
RUN mkdir -p /opt/vespa/.m2
RUN chown -R vespa:vespa /opt/vespa
COPY --chown=circleci:circleci .m2 /opt/vespa/.m2
RUN mkdir /home/circleci    
RUN chown -R vespa:vespa /home/circleci

# override vespa entrypoint
ENTRYPOINT []

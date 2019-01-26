FROM openjdk:11-jdk-slim

WORKDIR /usr/local/lib

ARG GRADLE_VERSION=5.1.1
ARG MAVEN_VERSION=3.6.0
ARG LSP_VERSION=0.32.0-201901231649

ENV PATH=/usr/local/lib/gradle-${GRADLE_VERSION}/bin:/usr/local/lib/apache-maven-${MAVEN_VERSION}/bin:$PATH
ENV JAR_VERSION=1.5.200.v20180922-1751

# Install dev dependencies
RUN apt-get update \
 && apt-get install -y wget procps

# Install gradle
RUN wget https://downloads.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip \
 && unzip gradle-${GRADLE_VERSION}-bin.zip \
 && rm gradle-${GRADLE_VERSION}-bin.zip

# Install Maven
RUN wget http://www-eu.apache.org/dist/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz \
 && tar xvf apache-maven-${MAVEN_VERSION}-bin.tar.gz \
 && rm apache-maven-${MAVEN_VERSION}-bin.tar.gz

# Install LSP
RUN mkdir jlsp \
 && cd jlsp \
 && wget -O lsp.tar.gz http://download.eclipse.org/jdtls/snapshots/jdt-language-server-${LSP_VERSION}.tar.gz \
 && tar xvf lsp.tar.gz \
 && rm lsp.tar.gz

COPY ./jlsp.sh /usr/local/bin/

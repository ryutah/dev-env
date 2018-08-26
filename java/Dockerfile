FROM openjdk:10.0.2-jdk

WORKDIR /usr/local/lib

ARG GRADLE_VERSION=4.9
ARG MAVEN_VERSION=3.5.4
ARG LSP_VERSION=0.24.0-201808242230

ENV PATH=/usr/local/lib/gradle-${GRADLE_VERSION}/bin:/usr/local/lib/apache-maven-${MAVEN_VERSION}/bin:$PATH
ENV JAR_VERSION=1.5.100.v20180611-1436

# Install gradle
RUN wget https://downloads.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip \
 && unzip gradle-${GRADLE_VERSION}-bin.zip \
 && rm gradle-${GRADLE_VERSION}-bin.zip

# Install Maven
RUN wget http://www-eu.apache.org/dist/maven/maven-3/3.5.4/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz \
 && tar xvf apache-maven-${MAVEN_VERSION}-bin.tar.gz \
 && rm apache-maven-${MAVEN_VERSION}-bin.tar.gz

# Install LSP
RUN mkdir jlsp \
 && cd jlsp \
 && wget -O lsp.tar.gz http://download.eclipse.org/jdtls/snapshots/jdt-language-server-${LSP_VERSION}.tar.gz \
 && tar xvf lsp.tar.gz \
 && rm lsp.tar.gz

COPY ./jlsp.sh /usr/local/bin/

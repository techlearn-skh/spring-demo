FROM ubuntu:24.04
RUN apt update -y
RUN apt install -y openjdk-11-jdk
RUN mkdir -p u01/applications/
COPY target/spring-demo-0.0.1-SNAPSHOT.jar /u01/applications/
CMD java -jar /u01/applications/spring-demo-0.0.1-SNAPSHOT.jar
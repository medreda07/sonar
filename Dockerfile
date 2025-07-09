# create Dockerfile for spring boot app
FROM openjdk:22-jdk-slim
VOLUME /tmp
EXPOSE 8088
ADD target/master-sir-2023-0.0.1-SNAPSHOT.jar tp-msir.jar
ENTRYPOINT ["java","-jar","/tp-msir.jar"]

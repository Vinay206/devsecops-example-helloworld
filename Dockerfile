#FROM frolvlad/alpine-oraclejdk8:slim
FROM adoptopenjdk/openjdk11:alpine-jre
VOLUME /tmp
ADD webapp/target/*.war app.war
RUN sh -c 'touch /app.war'
EXPOSE 80
ENTRYPOINT ["java","-jar","/app.war"]

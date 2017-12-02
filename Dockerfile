FROM 10.229.40.121:8082/system/openjdk:8-jre-alpine

EXPOSE 8081
EXPOSE 8888

RUN mkdir -p /maven/project/

COPY ./*.jar  /maven/project/

ENTRYPOINT java $JAVA_OPTS -jar /maven/project/$JAR_NAME.jar

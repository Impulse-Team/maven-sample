FROM amazoncorretto:18.0.2
EXPOSE 8080
RUN mkdir -p /app/
ADD target/*.jar /app/sample-maven.jar
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -jar /app/sample-maven.jar"]

FROM openjdk:11
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENV SCOPE="test" PORT=8761
ENTRYPOINT ["java", "-jar", "/app.jar"]

FROM openjdk:27-ea-jdk-slim

WORKDIR /app

COPY src/ .

CMD ["java", "./main/java/com/devops/lab/Output.java"]

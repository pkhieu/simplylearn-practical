FROM openjdk:11-jdk-slim

WORKDIR /app

COPY helloworld.java /app

RUN javac helloworld.java

CMD ["java", "HelloWorld"]

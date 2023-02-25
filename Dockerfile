FROM openjdk:11-jdk-slim

WORKDIR /app

COPY HelloWorld.java /app

RUN javac helloworld.java

CMD ["java", "HelloWorld"]

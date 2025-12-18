FROM openjdk:17-jdk-slim
WORKDIR /app
COPY . .
RUN javac -d out src/main/java/com/example/App.java
EXPOSE 8080
CMD ["java", "-cp", "out", "com.example.App"]
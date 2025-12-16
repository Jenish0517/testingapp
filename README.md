# Java Docker App (No Jenkinsfile)

## Tools Used
- Java
- Maven
- Docker

## How to Run Manually
mvn clean package
docker build -t java-app .
docker run -d -p 8081:8080 java-app

Access: http://localhost:8081

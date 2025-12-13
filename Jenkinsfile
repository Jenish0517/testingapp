pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t simple-java-jenkins .'
            }
        }

        stage('Run Container') {
            steps {
                sh '''
                docker rm -f simple-java-jenkins || true
                docker run -d -p 8080:8080 --name simple-java-jenkins simple-java-jenkins
                sleep 5
                '''
            }
        }

        stage('Test App') {
            steps {
                sh 'curl http://localhost:8080/hello'
            }
        }
    }
}

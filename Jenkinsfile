pipeline {
    agent any
    environment {
        IMAGE_NAME = "mywebsite"
        CONTAINER_NAME = "mywebsite_container"
    }
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/Selimth/Jenkins-Docker.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
            }
        }
        stage('Run Container') {
            steps {
                sh 'docker stop $CONTAINER_NAME || true'
                sh 'docker rm $CONTAINER_NAME || true'
                sh 'docker run -d -p 8000:80 --name $CONTAINER_NAME $IMAGE_NAME'
            }
        }
    }
}

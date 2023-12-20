pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                    checkout scm  
                }
        }
        stage('Test') {
            steps {
                sh 'sudo -S apt update'
                sh 'npm test'
            }
        }
        stage('Build') {
            steps {
                sh 'npm run build'
            }
        }
        stage('Build Image') {
            steps {
                sh 'export DOCKER_BUILDKIT=1'
                sh 'docker build -t my-node-app:1.0 .'
            }
        }
        
    }
}

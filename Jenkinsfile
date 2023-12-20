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
                sh 'read -s -p "Ramya@2000" password'
                sh 'echo "Ramya@2000" | sudo -S apt update'
                // sh 'echo "Ramya@2000" | apt install npm'
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
                sh 'sudo docker build -t my-node-app:1.0'
            }
        }
        
    }
}

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
                sh 'echo "Ramya@2000890" | sudo -S apt install npm'
                sh 'npm test'
            }
        }
        stage('Build') {
            steps {
                sh 'npm run build'
            }
        }
        
    }
}

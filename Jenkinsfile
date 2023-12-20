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
                sh 'sudo -S docker build -t my-node-app:1.0 .'
            }
        }
        stage('List Images') {
            steps {
                sh 'sudo -S docker images'
            }
        }   
    }
    post {  
         always {  
             echo 'This will always run' 
         }  
         success {  
             echo 'This will run only if successful'  
            emailext subject: "Node project Pipeline Successfull",
                      body: "Hi, <br><br>Build image is successfull.<br>",
                      to: "ramya.murugesan@tatatechnologies.com",
					  replyTo: "ramya.murugesan@tatatechnologies.com",
                      mimeType: 'text/html'
         }  
         failure {  
              echo 'Build has failed, please check logs.'
              emailext subject: "Node project Pipeline failed",
                      body: "Hi, <br><br>Build is failed.<br>",
                      to: "ramya.murugesan@tatatechnologies.com",
					  replyTo: "ramya.murugesan@tatatechnologies.com",
                      mimeType: 'text/html'
         }  
         unstable {  
             echo 'Run marked as unstable'  
         }  
         changed {  
             echo 'State of the Pipeline has changed'
         }  
     } 
}

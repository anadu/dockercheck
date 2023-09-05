pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

    stages {
        stage('checkout') {
            steps {
                
                git branch: 'main',  url: 'https://github.com/anadu/dockercheck.git'
           }
        }   
        
        stage('Terraform init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform destroy') {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
        
    }
}
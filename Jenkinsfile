pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                 checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Mraakhil/TERRAFORM.S3.git']])         
            }
        }
        stage ("terraform init") {
            steps {
                sh ('terraform init') 
            }
        }   
        
        stage ("terraform Action") {
            steps {
                echo "Terraform action is --> ${action}"
                sh ('terraform ${action} --auto-approve') 
           }
        }
    }
    
}

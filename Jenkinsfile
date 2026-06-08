pipeline {
    agent any

    stages {
        stage('Terraform Init') {
            steps {
                echo 'Initialising Terraform...'
                bat 'wsl terraform -chdir=/home/Frank-cloud/Devops/terraform-docker-jenkins init'
            }
        }

        stage('Terraform Validate') {
            steps {
                echo 'Validating configuration...'
                bat 'wsl terraform -chdir=/home/Frank-cloud/Devops/terraform-docker-jenkins validate'
            }
        }

        stage('Terraform Plan') {
            steps {
                echo 'Planning infrastructure...'
                bat 'wsl terraform -chdir=/home/Frank-cloud/Devops/terraform-docker-jenkins plan'
            }
        }

        stage('Terraform Apply') {
            steps {
                echo 'Deploying infrastructure...'
                bat 'wsl terraform -chdir=/home/Frank-cloud/Devops/terraform-docker-jenkins apply -auto-approve'
            }
        }

        stage('Verify Container') {
            steps {
                echo 'Verifying container is running...'
                bat 'wsl docker ps | findstr terraform-nginx'
            }
        }
    }

    post {
        success {
            echo 'Terraform deployment successful! Access at http://localhost:8088'
        }
        failure {
            echo 'Deployment failed — check logs above.'
        }
    }
}

pipeline {
    agent any 

    tools {
        maven 'Default'
    }

    stages {

        stage ('Checkout') {
            steps {
                git 'https://github.com/infinity-789/lab11.git'
            }
        }

        stage ('Build') {

            steps {
                sh 'mvn clean compile'
            }
        }

        stage ('Test') {
            steps {
                sh 'mvn test'
            }
        }
    }

    post {
        always {
            junit '**/target/surefire-reports/*.xml'
        }
    }
}
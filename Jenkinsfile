pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                // Run Maven build on Windows
                bat 'mvn clean install'
            }
        }

        stage('Deploy') {
            steps {
                // Copy the WAR file into Tomcat's webapps folder
                bat "copy target\\*.war C:\\Users\\dangt\\OneDrive\\Desktop\\apache-tomcat-9.0.115-windows-x64\\apache-tomcat-9.0.115\\webapps\\"
            }
        }
    }

    post {
        success {
            echo 'Build and deployment completed successfully!'
        }
        failure {
            echo 'Build or deployment failed. Please check logs.'
        }
    }
}

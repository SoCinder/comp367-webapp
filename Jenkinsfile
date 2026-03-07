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
                bat 'mvn clean install'
            }
        }
        stage('Deploy') {
            steps {
                bat 'copy target\*.war C:\Users\dangt\Desktop\apache-tomcat-9.0.115\webapps\'
            }
        }
    }
}

pipeline {
    agent any

    stages {
        stage('maven install'){
            steps{
                echo 'mvn clean install'
                withMaven(maven: 'maven3'){
                    sh 'which mvn'
                    sh 'mvn test'
                    sh 'mvn clean install'
                }
            }
        }
        stage('docker-compose up') {
            steps {
                echo 'Docker-Compose-Up'
                //sh 'docker-compose up --detach --build'
            }
        }
    }
}
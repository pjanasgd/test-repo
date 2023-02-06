pipeline {
    agent any

    stages {
        stage('maven install'){
            steps{
                echo 'mvn clean install'
                withMaven(maven: 'maven3'){
                    sh 'which mvn'
                    sh 'mvn clean install'
                }
            }
        }
        stage('docker-compose up') {
            steps {
                echo 'docker-compose up1'
                //sh 'docker-compose up --detach --build'
            }
        }
    }
}
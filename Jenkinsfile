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
        stage('Docker-Compose-Up') {
            steps {
                echo 'Docker-Compose-Up'
                sh "docker-compose --version"
                sh "docker-compose up --detach --build"
            }
        }
    }
}
pipeline{
    agent any
    options{
        buildDiscarder(logRotator(numToKeepStr: '5', daysToKeepStr: '5'))
        timestamps()
    }
     environment {
        registry = "w01f/simplylearn-practical"
        registryCredential = 'dockerhub-w01f'
    }
    
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    sh "docker build -t ${registry}:${BUILD_NUMBER} ."
                }
            }
        }
        
        stage('Push Docker Image') {
            steps {
                script {
                    withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: registryCredential, usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD']]) {
                        sh "docker login -u ${DOCKER_USERNAME} -p ${DOCKER_PASSWORD}"
                        sh "docker push ${registry}:${BUILD_NUMBER}"
                    }
                }
            }
        }
    }
}

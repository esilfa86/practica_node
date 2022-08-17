pipeline {
  agent any
  stages {
    stage('clone repository') {
      steps {
git --version'''
      }
    }

    stage('my name app') {
      steps {
        withCredentials(bindings: [
                      string(credentialsId: 'kubernete-jenkis', variable: 'api_token')
                      ]) {
            sh 'kubectl --token $api_token --server https://192.168.49.2:8443 --insecure-skip-tls-verify=true apply -f my-name-app.yaml '
          }

        }
      }

    }
  }

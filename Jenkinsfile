pipeline {
  agent any
  stages {
    stage('Checkout Code') {
      steps {
        git(url: 'https://github.com/dking1342/jenkins-demo/tree/main', branch: 'main')
      }
    }

    stage('Log') {
      steps {
        sh 'ls -la'
      }
    }

    stage('Build') {
      steps {
        sh 'docker build .'
      }
    }

    stage('Log into Dockerhub') {
      environment {
        DOCKERHUB_USER = ${DOCKERHUB_USER}
        DOCKERHUB_PASSWORD = ${DOCKERHUB_PASS}
      }
      steps {
        sh 'docker login -u $DOCKERHUB_USER -p $DOCKERHUB_PASS'
      }
    }

    stage('Push') {
      steps {
        sh 'docker push kavooce/jenkins-demo:latest'
      }
    }

  }
}
pipeline {
  agent { label 'linux' }
  options {
    buildDiscarder(logRotator(numToKeepStr: '5'))
  }
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t contenedor-sb:latest .'
      }
    }
    stage('Scan') {
      steps {
        sh 'trivy contenedor-sb:latest'
      }
    }
  }
}
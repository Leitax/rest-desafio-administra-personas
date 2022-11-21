pipeline {
  agent any
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
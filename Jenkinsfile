pipeline {
  agent any

 stages {

     stage('Build Artifact - Maven') {
      steps {
        sh "mvn clean package -DskipTests=true"
        archive 'target/*.jar'
      }
    }
  
    stage('Scan') {
            steps {
                  
            sh "bash trivy-docker-image-scan.sh"
            }

    }
  }
}


pipeline {
  agent any

 stages {
    stage('Build Artifact - Maven') {
      steps {
        bat "mvn clean package -DskipTests=true"
        archiveArtifacts 'target/*.jar'
      }
    }
    stage('Scan') {
            steps {
                
          bat "bash trivy-docker-image-scan.sh"
            }

  }
}
}
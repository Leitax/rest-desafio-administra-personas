pipeline {
  agent any

 stages {
  
    stage('Scan') {
            steps {
                
          bat "bash trivy-docker-image-scan.sh"
            }

  }
}
}

pipeline {
  agent any

 stages {
  
    stage('Scan') {
            steps {
                
          sh "bash trivy-docker-image-scan.sh"
            }

  }
}
}

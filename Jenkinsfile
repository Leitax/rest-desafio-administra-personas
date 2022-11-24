pipeline {
  agent any

 stages {
  
    stage('Scan') {
            steps {
                
          bat "trivy image sboot-contenedor"
            }

    }
  }
}


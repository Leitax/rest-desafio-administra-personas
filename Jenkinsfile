pipeline {
  agent any

 stages {

     stage('Build Artifact - Maven') {
      steps {
        bat "mvn clean package -DskipTests=true"
        archive 'target/*.jar'
      }
    }
  
    stage('Scan') {
            steps {
                  
            bat "trivy image sboot-contenedor"
            }

    }
  }
}


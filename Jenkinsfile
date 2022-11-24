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
             sh "docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v $PWD:/tmp/.cache/ aquasec/trivy:0.34.0 image --exit-code 1 --severity CRITICAL sb-imagen"
              sh "docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v $PWD:/tmp/.cache/ aquasec/trivy:0.34.0 image --exit-code 0 --severity HIGH sb-imagen"


    
    exit_code:$?
    echo 'Exit Code: $exit_code'
            }

    }
  }
}


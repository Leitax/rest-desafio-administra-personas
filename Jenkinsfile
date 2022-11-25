pipeline {
  agent any

 stages {

     stage('Build Artifact - Maven') {
      steps {
        sh "mvn clean package -DskipTests=true"
        archive 'target/*.jar'
      }
    }
  
    stage('Scan Vulnerabilidades') {
            
              parallel {
                stage ('secretos') {
                   steps{
                    sh "docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v $PWD:/tmp/.cache/ aquasec/trivy:0.34.0 --exit-code 1 image --security-checks secret sb-imagen"
                  }
                }  
                
                stage ('vuln') {
                steps{
                 sh "docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v $PWD:/tmp/.cache/ aquasec/trivy:0.34.0 --exit-code 1 image --security-checks vuln sb-imagen"
               }
             }   
                stage ('mysql') {
                   steps{
                    sh "docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v $PWD:/tmp/.cache/ aquasec/trivy:0.34.0 --exit-code 1 image --security-checks vuln mysql"
                  }
                }   
                  

                }
            
      }     
  }
}

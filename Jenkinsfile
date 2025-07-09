pipeline {
    agent any
tools {
    maven 'maven'
}
environment{
SONAR_URL="http://localhost:9000"
}

    stages {
        stage('Checkout') {
            steps {
                git branch: 'feature', credentialsId: 'git-connect', url: 'https://github.com/medreda07/sonar'
            }
        }
        stage("Build") {
           steps {
        sh 'mvn clean org.jacoco:jacoco-maven-plugin:prepare-agent install'
            }
        }
        
        stage("SonarQube Analysis") {
          steps {
        sh 'mvn sonar:sonar -Dsonar.host.url=$SONAR_URL'
           }
        }  
        
        stage('Approve Deployment') {
          input {
               message "Do you want to proceed for deployment?"
               }
          steps {
          sh 'echo "Deploying into Server"'
         }
      }
   }
}

pipeline { 
 agent any 
    stages {
     stage('CodeCheckout') {
             steps {
             script { 
                 checkout scm 
               /* def mvnHome = tool 'maven-3' 
                  def javaHome = tool 'JAVA_1.8' */
                     }
                  }
              } 
    
     stage(' Build customer app code') { 
      steps {
       script { 
         try { 
          sh 'sudo apt-get update -y'
          sh 'sudo apt install openjdk-8-jdk'
          sh 'sudo apt install maven' 
          sh 'mvn clean install -DskipTests'
          sh 'java -version'
          currentBuild.result = 'SUCCESS' 
         } catch (Exception err)
           {
           currentBuild.result = 'FAILURE' 
           }
       }
      }
     }
    }         
  }





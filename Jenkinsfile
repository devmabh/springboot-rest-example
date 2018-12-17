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
          sh 'sudo apt-get -y update'
          sh 'sudo apt-get -y install openjdk-8-jdk'
          sh 'sudo apt-get -y install maven' 
          sh 'mvn clean install'
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





pipeline{
      agent any
      stages{
            stage('check out'){
                  steps{
			sh "rm -rf Maven"
                        sh "git clone https://github.com/ambareeshns/Maven.git"					
                  }
            }
	      stage('Build'){
                  steps{	
			
                        sh "mvn package"				
                  }
            }
         stage('Tomcat-deploy'){
                  steps{	
			
                        sh "cp /var/lib/jenkins/workspace/namma-pipe/target/*.war /var/lib/tomcat9/webapps"				
                  }
            }  
	}
}

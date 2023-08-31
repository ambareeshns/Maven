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
			
                        sh "cd /var/lib/jenkins/workspace/namma-pipe/target"
			sh "docker build -t namma-image:${BUILD_NUMBER} ."
			sh "docker rm -f port"
			sh "docker run -d -p 6060:8080 --name port namma-image:${BUILD_NUMBER}"
                  }
            }  
	}
}

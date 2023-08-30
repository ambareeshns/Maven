pipeline{
      agent any
      stages{
            stage('check out'){
                  steps{			
                        sh "git clone https://github.com/ambareeshns/Maven.git"					
                  }
            }
	      stage('Build'){
                  steps{	
			sh "rm -rf maven"
                        sh "mvn package"				
                  }
            }
           
	}
}

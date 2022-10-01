pipeline{
      agent any
      stages{
            stage('check out'){
                  steps{			
                        sh "rm -rf Maven"
                        sh "git clone https://github.com/anilpu3/Maven.git"					
                  }
            }
            stage('build'){
                  steps{
                        sh "pwd"
                        sh "ls"
                        sh "cd Maven"
		                  	sh 'mvn clean install -DskipTests'
                        sh "echo ${BUILD_NUMBER}"
                        sh "docker build -t namma-maven-image:${BUILD_NUMBER} ."
                  }
            }

stage ('Push image to Artifactory') { // take that image and push to artifactory
        steps {
            rtDockerPush(
                serverId: "Namma-Jfrog",
                image: "namma-maven-image:${BUILD_NUMBER}",
                host: 'tcp://ip-172-31-19-173',
                targetRepo: 'libs-release-local', // wherer to copy to (from docker-virtual)
                // Attach custom properties to the published artifacts:
                properties: 'project-name=namma-project;status=stable'
            )
        }
    }
}
}

node {
    def app
    
     stage('Initialize'){
                 def dockerHome = tool 'MyDocker'
        env.PATH = "${dockerHome}/bin:${env.PATH}"
     }
     
     stage('Clone repository') {
         checkout scm
     }
     
     stage('Build image') {
         app = docker.build("srinathramanathan/docker")
     }
     
     stage('Test image') {
         app.inside {
             sh 'echo "Tests passed"'
         }
         }
         
         stage('Push image') {
                docker.withRegistry('https://registry.hub.docker.com', 'docker-cred') {
                 app.push("${env.BUILD_NUMBER}")
                 app.push("latest")
              }
          }
      }

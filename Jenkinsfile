pipeline {
    agent {

    label "NODES"
    }
    
    stages {

        stage ("Download Dependices") {
         steps {

            sh '''
              npm ci
            '''
         }
        }
        stage ('make artificats') {
         steps {
            sh '''
            zip -r todo.zip node_modules server.js
            '''
         }
        }
     stage ('upload the Artifact to Nexus') {
        steps {
         sh'''
            curl -v -u admin:nexus123 --upload-file todo.zip  http://13.222.207.100:8081/repository/todo/todo.zip

         '''
        }
     }
    }
}
pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh 'hugo'
        sh 'zip -r build.zip public'
        archiveArtifacts(artifacts: 'build.zip', caseSensitive: true, onlyIfSuccessful: true)
      }
    }

    stage('Deploy') {
        node {
          withCredentials([string(credentialsId: 'PRIVATE_SSH_KEY', variable: 'TOKEN')]) {
            sh '''
              set +x
              echo $TOKEN
              '''
            }
        }
    }

  }
}

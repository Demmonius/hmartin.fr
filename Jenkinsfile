pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
    }
  }
  environment {
        PRIVATE_SSH_KEY = credentials('PRIVATE_SSH_KEY')
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
      steps {
        sh 'echo $PRIVATE_SSH_KEY'
      }
    }
  }
}

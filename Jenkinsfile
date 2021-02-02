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
      steps {
        echo 'Deploying...'
      }
    }

  }
}
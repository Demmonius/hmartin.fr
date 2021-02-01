pipeline {
  agent {
    docker {
      image 'klakegg/hugo:0.80.0'
      args '--entrypoint='
    }

  }
  stages {
    stage('Build') {
      steps {
        sh 'hugo'
      }
    }

    stage('Store artifact') {
      steps {
        archiveArtifacts(artifacts: 'public', caseSensitive: true, onlyIfSuccessful: true)
      }
    }

    stage('Deploy') {
      steps {
        echo 'Deploying...'
      }
    }

  }
}
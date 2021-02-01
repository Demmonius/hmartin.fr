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

    stage('Deploy') {
      steps {
        echo 'Deploying....'
      }
    }

  }
}

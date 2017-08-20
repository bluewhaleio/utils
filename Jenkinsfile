pipeline {
  agent {
    docker {
      image '2315d771b0be'
    }
    
  }
  stages {
    stage('error') {
      steps {
        dir(path: '/home/utils')
      }
    }
  }
}
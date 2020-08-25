pipeline {
  agent {
    label "saltmaster"
  }

  stages {
    stage('pull latest code to saltmaster'){
      steps {
        echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
        sh 'cd /srv; git reset --hard; git checkout homelab; git pull'
      }
    }
    stage('Push code to saltmaster'){
      steps {
        echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
        sh "salt 'salt' state.highstate"
      }
    }
    stage('Push code via highstate'){
      steps {
        echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
        sh "salt '*' state.highstate"
      }
    }
  }
}

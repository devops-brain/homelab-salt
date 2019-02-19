pipeline {
  agent {
    label "saltmaster"
  }

  stages {
    stage('pull latest code to saltmaster'){
      steps {
        echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
        sh 'cd /srv; git checkout master; git checkout .; git pull'
      }
    }
    stage('Push code via highstate'){
      steps {
        echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
        sh "salt 'nuc5ppyh-01' state.highstate"
        sh "salt 'odroid-hc2-01' state.highstate"
        sh "salt '*' state.highstate"
      }
    }
  }
}

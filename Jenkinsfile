pipeline {
    agent none
    stages {
        stage('Test') {
            agent {
                docker { image 'debian:8-slim' }
            }
            steps {
                sh 'ls -la'
            }
        }
    }
}

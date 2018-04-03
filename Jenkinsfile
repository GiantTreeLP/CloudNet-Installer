pipeline {
    agent none
    stages {
        stage('Debian 8 Slim') {
            agent {
                docker { image 'debian:8-slim' }
            }
            steps {
                sh 'whoami; id'
                sh 'apt-get update && apt-get install curl'
                sh 'mkdir CloudNet-Test'
                sh 'cd CloudNet-Test'
                sh 'curl -sL "https://git.groundmc.net/GiantTree/CloudNet-Installer/raw/master/install.sh" | bash; exit ${PIPESTATUS[0]}'
            }
        }
    }
}

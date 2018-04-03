pipeline {
    agent none
    stages {
        stage('Debian 8 Slim') {
            agent {
                docker { 
                    image 'debian:8-slim'
                    args '-u root:root'
                }
            }
            steps {
                sh 'id'
                sh 'apt-get update && apt-get install curl -y'
                sh 'mkdir CloudNet-Test'
                sh 'cd CloudNet-Test'
                sh 'curl -sL "https://git.groundmc.net/GiantTree/CloudNet-Installer/raw/master/install.sh" | bash; exit ${PIPESTATUS[0]}'
            }
        }
    }
}

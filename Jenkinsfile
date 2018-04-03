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
                sh 'pwd'
                sh 'exit'
                sh 'apt-get update && apt-get install curl -y'
                sh 'cd /root/'
                sh 'rm -rf CloudNet-Test'
                sh 'mkdir CloudNet-Test'
                sh 'cd CloudNet-Test'
                sh 'curl -sL "https://git.groundmc.net/GiantTree/CloudNet-Installer/raw/master/install.sh" -O install.sh'
                sh 'bash install.sh'
            }
        }
    }
}

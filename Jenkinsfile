pipeline {
    agent none
    stages {
        stage('Debian 8 Slim') {
            agent {
                docker { image 'debian:8-slim' }
            }
            steps {
                sh 'curl -sL "https://git.groundmc.net/GiantTree/CloudNet-Installer/raw/master/install.sh" | bash'
            }
        }
    }
}
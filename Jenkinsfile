pipeline {
    agent none
    stages {
        stage('Debian 8 Slim') {
            agent {
                docker { image 'debian:8-slim' }
            }
            steps {
                sh returnStatus: true, script: 'mkdir CloudNet-Test'
                sh returnStatus: true, script: 'cd CloudNet-Test'
                sh returnStatus: true, script: 'curl -sL "https://git.groundmc.net/GiantTree/CloudNet-Installer/raw/master/install.sh" | bash'
            }
        }
    }
}

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
                sh '''#!/bin/bash
                apt-get update && apt-get install curl -y
                cd /root/
                rm -rf CloudNet-Test
                mkdir CloudNet-Test
                cd CloudNet-Test
                curl -sL "https://git.groundmc.net/GiantTree/CloudNet-Installer/raw/master/install.sh" -O install.sh
                bash install.sh
                '''
            }
        }
    }
}

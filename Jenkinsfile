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
                curl -sL "https://git.groundmc.net/GiantTree/CloudNet-Installer/raw/branch/master/install.sh" -O install.sh
                bash install.sh
                '''
            }
        }
        stage('Debian 9 Slim') {
            agent {
                docker { 
                    image 'debian:9-slim'
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
                curl -sL "https://git.groundmc.net/GiantTree/CloudNet-Installer/raw/branch/master/install.sh" -O install.sh
                bash install.sh
                '''
            }
        }
        stage('Debian Testing Slim') {
            agent {
                docker { 
                    image 'debian:testing-slim'
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
                curl -sL "https://git.groundmc.net/GiantTree/CloudNet-Installer/raw/branch/master/install.sh" -O install.sh
                bash install.sh
                '''
            }
        }
        stage('Ubuntu 14.04') {
            agent {
                docker { 
                    image 'ubuntu:14.04'
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
                curl -sL "https://git.groundmc.net/GiantTree/CloudNet-Installer/raw/branch/master/install.sh" -O install.sh
                bash install.sh
                '''
            }
        }
        stage('Ubuntu 16.04') {
            agent {
                docker { 
                    image 'ubuntu:16.04'
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
                curl -sL "https://git.groundmc.net/GiantTree/CloudNet-Installer/raw/branch/master/install.sh" -O install.sh
                bash install.sh
                '''
            }
        }
        stage('Ubuntu 17.10') {
            agent {
                docker { 
                    image 'ubuntu:17.10'
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
                curl -sL "https://git.groundmc.net/GiantTree/CloudNet-Installer/raw/branch/master/install.sh" -O install.sh
                bash install.sh
                '''
            }
        }
    }
}

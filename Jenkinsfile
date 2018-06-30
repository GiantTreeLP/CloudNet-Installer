pipeline {
    agent none
    stages {
        stage ('Run tests') {
            parallel {
                stage('Debian 8 Slim') {
                    agent {
                        docker {
                            label 'docker'
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
                            label 'docker'
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
                            label 'docker'
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
                            label 'docker'
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
                            label 'docker'
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
                            label 'docker'
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
                stage('Ubuntu 18.04') {
                    agent {
                        docker {
                            label 'docker'
                            image 'ubuntu:18.04'
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
                stage('Alpine 3.5') {
                    agent {
                        docker {
                            label 'docker'
                            image 'alpine:3.5'
                            args '-u root:root'
                        }
                    }
                    steps {
                        sh '''#!/bin/sh
                        apk add --no-cache bash curl
                        cd /root/
                        rm -rf CloudNet-Test
                        mkdir CloudNet-Test
                        cd CloudNet-Test
                        curl -sL "https://git.groundmc.net/GiantTree/CloudNet-Installer/raw/branch/master/install.sh" -O install.sh
                        bash install.sh
                        '''
                    }
                }
                stage('Alpine 3.6') {
                    agent {
                        docker {
                            label 'docker'
                            image 'alpine:3.6'
                            args '-u root:root'
                        }
                    }
                    steps {
                        sh '''#!/bin/sh
                        apk add --no-cache bash curl
                        cd /root/
                        rm -rf CloudNet-Test
                        mkdir CloudNet-Test
                        cd CloudNet-Test
                        curl -sL "https://git.groundmc.net/GiantTree/CloudNet-Installer/raw/branch/master/install.sh" -O install.sh
                        bash install.sh
                        '''
                    }
                }
                stage('Alpine 3.7') {
                    agent {
                        docker {
                            label 'docker'
                            image 'alpine:3.7'
                            args '-u root:root'
                        }
                    }
                    steps {
                        sh '''#!/bin/sh
                        apk add --no-cache bash curl
                        cd /root/
                        rm -rf CloudNet-Test
                        mkdir CloudNet-Test
                        cd CloudNet-Test
                        curl -sL "https://git.groundmc.net/GiantTree/CloudNet-Installer/raw/branch/master/install.sh" -O install.sh
                        bash install.sh
                        '''
                    }
                }
                stage('ArchLinux') {
                    agent {
                        docker {
                            label 'docker'
                            image 'base/archlinux'
                            args '-u root:root'
                        }
                    }
                    steps {
                        sh '''#!/bin/bash
                        cd /root/
                        rm -rf CloudNet-Test
                        mkdir CloudNet-Test
                        cd CloudNet-Test
                        curl -sL "https://git.groundmc.net/GiantTree/CloudNet-Installer/raw/branch/master/install.sh" -O install.sh
                        bash install.sh
                        '''
                    }
                }
                stage('CentOS 7') {
                    agent {
                        docker {
                            label 'docker'
                            image 'centos:7'
                            args '-u root:root'
                        }
                    }
                    steps {
                        sh '''#!/bin/bash
                        cd /root/
                        rm -rf CloudNet-Test
                        mkdir CloudNet-Test
                        cd CloudNet-Test
                        curl -sL "https://git.groundmc.net/GiantTree/CloudNet-Installer/raw/branch/master/install.sh" -O install.sh
                        bash install.sh
                        '''
                    }
                }
                stage('Fedora 26') {
                    agent {
                        docker {
                            label 'docker'
                            image 'fedora:26'
                            args '-u root:root'
                        }
                    }
                    steps {
                        sh '''#!/bin/bash
                        cd /root/
                        rm -rf CloudNet-Test
                        mkdir CloudNet-Test
                        cd CloudNet-Test
                        curl -sL "https://git.groundmc.net/GiantTree/CloudNet-Installer/raw/branch/master/install.sh" -O install.sh
                        bash install.sh
                        '''
                    }
                }
                stage('Fedora 27') {
                    agent {
                        docker {
                            label 'docker'
                            image 'fedora:27'
                            args '-u root:root'
                        }
                    }
                    steps {
                        sh '''#!/bin/bash
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
    }
}

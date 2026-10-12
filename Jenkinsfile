pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/jyoshithareddy08/complete-build-lab.git'
            }
        }

        stage('Maven Build') {
            steps {
                bat 'mvn clean package'
            }
        }

        stage('Docker Build') {
            steps {
                bat 'docker build -t complete-build-lab:1.0 .'
            }
        }

        stage('Docker Test') {
            steps {
                bat 'docker run --rm complete-build-lab:1.0'
            }
        }
    }

    post {
        success {
            echo 'Complete Build Lab finished successfully!'
        }
        failure {
            echo 'Build failed. Check Console Output.'
        }
    }
}

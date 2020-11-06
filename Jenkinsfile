pipeline {
    agent any

    stages {
        stage('unit test') {
            steps {
                sh label: '', script: '''cd shopping-service/cmd/tests
                go mod download
                go test -v 2>&1 | go-junit-report > report.xml'''
            }
            post {
                always {
                    junit 'shopping-service/cmd/tests/report.xml'
                }
            }
        }
    }
}
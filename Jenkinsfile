pipeline {
    agent any
    triggers {
        pollSCM('* * * * *')
    }
    stages {
        stage ('Build') {
            steps {
                echo 'Executing Build Stage'
            }
        }
        stage ('Unit Test-utPLSQL') {
            steps {
                echo 'Running utPLSQL'
            }
        }
        stage ('SQL Monitor Report') {
            steps {
                echo 'Generating SQL Monitor Report'
            }
        }
        stage ('Sonar Code Scan') {
            steps {
                echo 'Running PLSQL code analysis'
            }
        }
        stage ('Automated PLSQL code review') {
            steps {
                echo 'Running Automated PLSQL code review'
            }
        }
        stage ('Deploying PLSQL code to QA') {
            steps {
                echo 'Running PLSQL code deployment to QA'
            }
        }
        stage ('Deploying PLSQL code to PROD') {
            steps {
                echo 'Running PLSQL code deployment to PROD'
            }
        }
    }
}

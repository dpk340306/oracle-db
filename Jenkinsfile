pipeline {
    agent any
    stages {
        stage ('Build') {
            steps {
                echo 'Executing Build Stage'
            }
        }
        stage ('Unit Test-utPLSQL') {
            steps {
                echo 'Running utPLSQL'
                bat 'start cmd.exe /c D:\hackathon\utPLSQL-cli\utPLSQL-cli\bin\utplsql.bat run HR/hr@//192.168.56.101:1521/orcl -f=ut_documentation_reporter -o=run.log -s -f=ut_coverage_html_reporter -o=coverage.html'   
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

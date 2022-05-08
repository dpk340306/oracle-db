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
                sh "echo ${env.WORKSPACE}"
                sh "echo ${env.JOB_NAME}"
                sh "chmod +x -R ${env.WORKSPACE}"
                sh "cat /var/lib/jenkins/workspace/demo-pipeline-20220503-v2@tmp/durable-9c153a06/script.sh"
                sh "/home/ec2-user/software/utPLSQL-cli/bin/utplsql run HR/hr@redhatsrvr:1521/pdborcl"
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

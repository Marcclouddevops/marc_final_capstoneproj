pipeline {
    agent any
    stages {
    
            
        stage('Change File Permissions') {
            steps {
                script {
                    // Change file permissions for build.sh and deploy.sh
                    sh 'chmod +x build-image.sh'
                    sh 'chmod +x deploy.sh'
                }
            }
        }
        
        stage('Build') {
            steps {
                // Run the build-image.sh script
                sh './build-image.sh'
            }
        }
        
        stage('Deploy') {
            steps {
                // Run the deploy.sh script
                sh './deploy.sh'
            }
        }
    }
    
}

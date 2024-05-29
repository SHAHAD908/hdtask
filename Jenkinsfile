pipeline {
    agent any
    options {
        buildDiscarder(logRotator(numToKeepStr: '5'))
    }
    stages {
        stage('Scan') {
            steps {
                script {
                    // Check out the main branch where your mvnw script is located
                    git branch: 'main', url: 'https://github.com/SHAHAD908/hdtask.git'
                    
                    // Run the SonarQube analysis using the mvnw script
                    withSonarQubeEnv('sq1') {
                        sh './mvnw clean org.sonarsource.scanner.maven:sonar-maven-plugin:3.9.0.2155:sonar'
                    }
                }
            }
        }
    }
}

pipeline {
    agent any
    options {
        buildDiscarder(logRotator(numToKeepStr: '5'))
    }
    stages {
        stage('Scan') {
            steps {
                script {
                    // Grant execute permissions to mvnw script
                    sh 'chmod +x mvnw'

                    // Run SonarQube analysis
                    withSonarQubeEnv('sq1') {
                        sh './mvnw clean org.sonarsource.scanner.maven:sonar-maven-plugin:3.9.0.2155:sonar'
                    }
                }
            }
        }
    }
}

pipeline{
  agent{
    label 'SLAVE'
  }
  environment {
    NEXUS=credentials('Nexus')
    MAJOR_VERSION="1.0"
  }

  stages{
    stage('Install all dependencies'){
      steps{
        sh '''
        npm install
        '''
      }
    }
    stage('Prepare an archive'){
      steps{
        sh '''
      tar -cvf cart-service-${MAJOR_VERSION}-${BUILD_NUMBER}.tgz node_modules package.json server.js
      '''
      }
    }
    stage('Upload to Nexus'){
      steps{
        sh '''
            curl -v -u -f $NEXUS --upload-file cart-service-${MAJOR_VERSION}-${BUILD_NUMBER}.tgz https://nexus.devops46.online/repository/cart-service/cart-service-${MAJOR_VERSION}-${BUILD_NUMBER}.tgz
      '''
      }
    }
  }
}
node {
    withCredentials([
        string(credentialsId: 'Secret_KeyId', variable: 'AWS_ACCESS_KEY_ID'),
        string(credentialsId: 'Access_Key', variable: 'AWS_SECRET_ACCESS_KEY')
    ]){

    
    stage 'Checkout'
        checkout scm
    stage 'Unit Tests'
        // sh 'npm run test'
    stage 'Docker Build & Publish'
        // build goes into dif ecr repos depending on the branch.   }
    
     if (env.BRANCH_NAME =="main"){
        sh 'aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 860758160586.dkr.ecr.us-east-1.amazonaws.com'
        docker.build('demowebapp')
        // line below is placeholder
        docker.withRegistry('https://860758160586.dkr.ecr.us-east-1.amazonaws.com/'){
            docker.image('demowebapp').push('latest')
        }
    }

    }}

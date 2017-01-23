node {

    stage "stage 1 | Creating docker image from dockerfile"
    sh "echo '[i] building docker image'"
    sh "docker build -t nginx-hello-world-${env.BUILD_NUMBER} ."

    stage "stage 2 | deploy to selected environment(local for demo) "
    sh "echo '[i] deploying locally'"
    sh "docker run --name nginx-hw-example-${env.BUILD_NUMBER} nginx-hello-world-${env.BUILD_NUMBER}"

    stage "stage 3 | notification(demo)"
    sh "echo 'the deployment has now finished'"
    sh "sleep 60"

    stage "stage 4 | finish build"
    sh "cleaning up all resources used(demo)"
    sh "docker rm nginx-hw-example-${env.BUILD_NUMBER}"
    sh "docker rm nginx-hello-world-${env.BUILD_NUMBER}"
}


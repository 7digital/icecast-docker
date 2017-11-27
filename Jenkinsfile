node('docker') {

  stage 'Clone'
  checkout scm

  stage 'Build'
  sh "docker build -t ${dockerRepo}/icecast:latest docker"

  stage 'Tag'
  def shortHash = sh(returnStdout: true, script: 'git rev-parse --short HEAD').trim()
  def imageId = sh(returnStdout: true, script: "docker images --format '{{.ID}}' ${dockerRepo}/icecast:latest").trim()
  sh """
TAGS=\$(cat tags)
for t in \${TAGS}; do
    docker tag ${imageId} ${dockerRepo}/icecast:\$t
done"""

  stage 'Push'
  sh($/$(aws ecr get-login --no-include-email --region eu-west-1)
docker push ${dockerRepo}/icecast/$)
}
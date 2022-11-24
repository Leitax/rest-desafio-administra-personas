


# docker run --rm -v $WORKSPACE:/root/.cache/ aquasec/trivy:0.34.0 -q image --exit-code 0 --severity HIGH --light $dockerImageName
# docker run --rm -v $WORKSPACE:/root/.cache/ aquasec/trivy:0.34.0 -q image --exit-code 1 --severity CRITICAL --light $dockerImageName
docker run -u root --rm -v /var/run/docker.sock:/var/run/docker.sock -v $PWD:/tmp/.cache/ aquasec/trivy:0.34.0 image sb-imagen
# docker run -u root --rm -v /var/run/docker.sock:/var/run/docker.sock -v $PWD:/tmp/.cache/ aquasec/trivy:0.34.0 image  sb-imagen


dockerImageName=sb-imagen
echo $dockerImageName

# docker run --rm -v $WORKSPACE:/root/.cache/ aquasec/trivy:0.34.0 -q image --exit-code 0 --severity HIGH --light $dockerImageName
# docker run --rm -v $WORKSPACE:/root/.cache/ aquasec/trivy:0.34.0 -q image --exit-code 1 --severity CRITICAL --light $dockerImageName
docker run -u root --rm -v /var/run/docker.sock:/var/run/docker.sock -v $PWD:/tmp/.cache/ aquasec/trivy:0.34.0 image --exit-code 1 --severity CRITICAL --light sb-imagen
docker run -u root --rm -v /var/run/docker.sock:/var/run/docker.sock -v $PWD:/tmp/.cache/ aquasec/trivy:0.34.0 image --exit-code 0 --severity HIGH --light sb-imagen

    # Trivy scan result processing
    exit_code=$?
    echo "Exit Code : $exit_code"

    # Check scan results
    if [[ "${exit_code}" == 1]]; then
        echo "Image scanning failed. Vulnerabilities found"
        exit 1;
    else
        echo "Image scanning passed. No CRITICAL vulnerabilities found"
    fi;

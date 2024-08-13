API_VERSION=0.1.1
date=$(date '+%Y%m%d%H%M%S')

docker buildx build --tag docker.io/sdake/test-api:v${API_VERSION} --output type=docker --progress plain .
docker buildx build --tag docker.io/sdake/test-api:v${API_VERSION} --output type=docker --progress plain .

docker push docker.io/sdake/test-api:v${API_VERSION}

TEST_API=0.1.0
date=$(date '+%Y%m%d%H%M%S')

docker buildx build --no-cache --tag artificialwisdomai/test-api:v${TEST_API} --output type=docker --progress plain .
docker buildx build --no-cache--tag artificialwisdomai/test-api:v${TEST_API}-${date} --output type=docker --progress plain .

#docker buildx build --tag artificialwisdomai/test-api:v${CLOUD_HYPERVISOR_VERSION}-${date} --output type=local,dest="${PWD}/target" --progress plain .

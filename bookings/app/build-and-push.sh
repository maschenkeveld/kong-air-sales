BUILD_VERSION="1.0.0"
IMAGE_NAME="kong-air-sales-bookings"

docker buildx build --platform linux/amd64 -t "nexus.pve-1.schenkeveld.io:8445/${IMAGE_NAME}:${BUILD_VERSION}" -f Dockerfile .

docker login nexus.pve-1.schenkeveld.io:8445 -u admin -p haqxDpyly6iSmLrgNpDt

docker push "nexus.pve-1.schenkeveld.io:8445/${IMAGE_NAME}:${BUILD_VERSION}"
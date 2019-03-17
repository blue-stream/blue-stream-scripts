#!/bin/bash
echo "------------------------------Build images--------------------------------"
cd ..
mkdir docker-images
for D in *; do
    if [ -d "$D" ]; then
        cd "$D"
        echo "------------------------------"$D"--------------------------------"
        docker build -t blue-stream/"$D":1.0 .
        cd ..
        docker save --output docker-images/"$D"-v1.0.tar blue-stream/"$D":1.0
    fi
done

docker save --output docker-images/rabbitmq.tar rabbitmq:management
docker save --output docker-images/minio.tar minio/minio:latest
docker save --output docker-images/test-saml-idp kristophjunge/test-saml-idp:latest
docker save --output docker-images/mongo.tar mongo:latest
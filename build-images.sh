#!/bin/bash
echo "------------------------------Build images--------------------------------"
cd ..
for D in *; do
    if [ -d "$D" ]; then
        cd "$D"
        echo "\n\n------------------------------"$D"--------------------------------"
        docker build -t blue-stream/"$D":1.1.3 .
        cd ..
        # docker save --output docker-images/"$D"-v1.1.tar blue-stream/"$D":1.1.3
    fi
done

# docker save --output docker-images/rabbitmq.tar rabbitmq:management
# docker save --output docker-images/minio.tar minio/minio:latest
# docker save --output docker-images/test-saml-idp.tar kristophjunge/test-saml-idp:latest
# docker save --output docker-images/mongo.tar mongo:latest

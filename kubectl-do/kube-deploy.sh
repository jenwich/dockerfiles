#!/bin/sh

kubectl --namespace $K8S_NAMESPACE set image \
    deployment $K8S_DEPLOYMENT_NAME \
    $K8S_CONTAINER_NAME=$K8S_IMAGE
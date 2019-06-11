#!/bin/sh

mkdir -p $HOME/.kube/

curl -s --request GET \
  --url https://api.digitalocean.com/v2/kubernetes/clusters/$DO_K8S_CLUSTER_ID/kubeconfig \
  --header "Authorization: Bearer $DO_API_TOKEN" > $HOME/.kube/config
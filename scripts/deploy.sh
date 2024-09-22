#!/bin/bash

if [ -z "$CONTAINER_REGISTRY" ]; then
  echo "Error: VERSION is not set."
  exit 1
fi

envsubst < ./scripts/kubernetes/deployment.yaml | kubectl apply -f -
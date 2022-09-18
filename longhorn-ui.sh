#!/bin/sh
kubectl --namespace longhorn-system port-forward service/longhorn-frontend 5080:80
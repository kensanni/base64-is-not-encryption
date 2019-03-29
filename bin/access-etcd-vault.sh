#!/usr/bin/env bash
set -e

kubectl config use-context secrets-vault

kubectl exec -it -n kube-system etcd-minikube -- /bin/sh -c './etcdctl get /registry/secrets/default/demo'

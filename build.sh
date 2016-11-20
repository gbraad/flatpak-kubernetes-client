#!/bin/sh
mkdir -p kubernetes-client/export
mkdir -p kubernetes-client/files/bin
mkdir -p .tmp
curl -sSL http://storage.googleapis.com/kubernetes-release/release/v1.3.4/bin/linux/amd64/kubectl > .tmp/kubectl
chmod +x .tmp/kubectl
mv .tmp/kubectl kubernetes-client/files/bin/
cp metadata kubernetes-client/
rm -rf .tmp
flatpak build-export repo kubernetes-client
flatpak build-bundle repo kubernetes-client.flatpak nl.gbraad.KubernetesClient

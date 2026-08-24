#!/bin/bash

# Variables
VERSION="v1.30.0"
URL="https://dl.k8s.io/release/${VERSION}/bin/linux/amd64/kubectl"
INSTALL_DIR="/usr/local/bin"

# Download and install kubectl
curl -LO "$URL"
chmod +x kubectl
sudo mv kubectl $INSTALL_DIR/
kubectl version --client

# Clean up
rm -f kubectl

echo "kubectl installation complete."

#sed -i 's/targetPort: 80/targetPort: 8000/g' k8s-specifications/vote-service.yaml
sed -i 's/port: 5000/port: 7000/g' k8s-specifications/vote-service.yaml
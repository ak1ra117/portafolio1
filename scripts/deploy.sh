#!/bin/bash
echo "🚀 Deploying Infrastructure..."

cd terraform
terraform init
terraform apply -auto-approve

cd ../ansible
ansible-playbook -i inventory playbook.yml

cd ../docker
docker-compose up -d

echo "✅ Deployment completed successfully!"

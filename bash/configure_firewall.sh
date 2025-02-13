#!/bin/bash

# Configurar reglas de firewall en Azure usando Azure CLI
az network nsg rule create   --resource-group MyResourceGroup   --nsg-name MyNSG   --name AllowSSH   --protocol Tcp   --priority 100   --direction Inbound   --access Allow   --source-port-range "*"   --destination-port-range 22   --source-address-prefix "*"   --destination-address-prefix "*"

echo "Firewall rule for SSH created successfully"

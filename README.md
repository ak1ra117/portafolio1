# Azure Network Automation Portfolio in construction...

This repository contains **Terraform, Ansible, Python, Bash, and Docker** scripts for automating networking tasks in **Microsoft Azure**.

## 📂 Repository Structure

```
azure-network-automation/
│── terraform/
│   ├── vnet.tf                # Deploy a Virtual Network (VNET) and NSGs in Azure
│   ├── vpn_gateway.tf         # Configure a VPN Gateway in Azure
│   ├── firewall.tf            # Implement an Azure Firewall with security rules
│── ansible/
│   ├── configure_firewall.yml # Configure firewall rules using Ansible
│   ├── deploy_vnet.yml        # Deploy a VNET using Ansible
│── python/
│   ├── create_nsg.py          # Create an NSG with rules in Azure using Python SDK
│   ├── analyze_traffic.py     # Analyze NSG traffic logs in Azure
│   ├── vpn_monitor.py         # Monitor Azure VPN connection status
│── bash/
│   ├── configure_firewall.sh  # Configure Azure NSG rules using Azure CLI
│── docker/
│   ├── Dockerfile             # Containerize Python VPN monitoring script
│── docs/
│   ├── usage_guide.md         # Guide to deploying the scripts in Azure
│── README.md                  # This file
```

## 🚀 Getting Started

### 1️⃣ **Setup Azure Authentication**  
Ensure you have Azure CLI installed and logged in:  
```sh
az login
```

### 2️⃣ **Deploy Infrastructure with Terraform**  
```sh
cd terraform
terraform init
terraform apply
```

### 3️⃣ **Apply Configuration with Ansible**  
```sh
cd ansible
ansible-playbook configure_firewall.yml
```

### 4️⃣ **Run Python Automation Scripts**  
```sh
cd python
python create_nsg.py
python analyze_traffic.py
```

### 5️⃣ **Execute Bash Scripting**  
```sh
cd bash
chmod +x configure_firewall.sh
./configure_firewall.sh
```

### 6️⃣ **Build & Run Docker Container**  
```sh
cd docker
docker build -t azure-vpn-monitor .
docker run -it azure-vpn-monitor
```

## 📚 References  
- [Terraform Azure Provider](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)  
- [Ansible Azure Modules](https://docs.ansible.com/ansible/latest/collections/azure/azcollection/index.html)  
- [Azure SDK for Python](https://docs.microsoft.com/en-us/python/api/overview/azure/)  
- [Azure CLI Documentation](https://learn.microsoft.com/en-us/cli/azure/)  

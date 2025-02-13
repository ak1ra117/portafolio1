# Azure Network Automation

This repository contains Terraform, Ansible, and Python scripts for automating Azure networking tasks.

## 📂 Structure
- `terraform/` - Terraform templates for deploying Virtual Networks, VPNs, and Firewalls.
- `ansible/` - Ansible playbooks for configuring network security groups and deploying networking resources.
- `python/` - Python scripts for monitoring and analyzing network logs in Azure.

## 🚀 Usage
1. Configure your Azure credentials (`az login` for Terraform/Ansible, or use `DefaultAzureCredential` for Python).
2. Deploy resources using Terraform: `terraform apply`.
3. Run Ansible playbooks: `ansible-playbook configure_firewall.yml`.
4. Execute Python scripts for monitoring and log analysis.

## 🔗 References
- [Terraform Azure Provider](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)
- [Ansible Azure Modules](https://docs.ansible.com/ansible/latest/collections/azure/azcollection/index.html)
- [Azure SDK for Python](https://docs.microsoft.com/en-us/python/api/overview/azure/)

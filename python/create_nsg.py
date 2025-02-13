from azure.mgmt.network import NetworkManagementClient
from azure.identity import DefaultAzureCredential

credential = DefaultAzureCredential()
client = NetworkManagementClient(credential, "YOUR_SUBSCRIPTION_ID")

nsg_params = {
    "location": "East US",
    "security_rules": [
        {
            "name": "AllowSSH",
            "protocol": "Tcp",
            "source_port_range": "*",
            "destination_port_range": "22",
            "source_address_prefix": "*",
            "destination_address_prefix": "*",
            "access": "Allow",
            "priority": 100,
            "direction": "Inbound"
        }
    ]
}

client.network_security_groups.begin_create_or_update("MyResourceGroup", "MyNSG", nsg_params)
print("NSG created successfully")

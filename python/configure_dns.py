from azure.mgmt.network import NetworkManagementClient
from azure.identity import DefaultAzureCredential

credential = DefaultAzureCredential()
client = NetworkManagementClient(credential, "YOUR_SUBSCRIPTION_ID")

vnet = client.virtual_networks.get("MyResourceGroup", "MyVNET")
vnet.dhcp_options = {"dns_servers": ["8.8.8.8", "8.8.4.4"]}
client.virtual_networks.begin_create_or_update("MyResourceGroup", "MyVNET", vnet)

print("DNS settings updated successfully")

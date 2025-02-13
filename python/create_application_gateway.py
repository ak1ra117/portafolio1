from azure.mgmt.network import NetworkManagementClient
from azure.identity import DefaultAzureCredential

credential = DefaultAzureCredential()
client = NetworkManagementClient(credential, "YOUR_SUBSCRIPTION_ID")

app_gateway_params = {
    "location": "East US",
    "sku": {"name": "Standard_v2", "tier": "Standard_v2"},
}

client.application_gateways.begin_create_or_update("MyResourceGroup", "MyAppGateway", app_gateway_params)
print("Application Gateway created successfully")

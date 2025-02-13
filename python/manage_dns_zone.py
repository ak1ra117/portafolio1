from azure.mgmt.privatedns import PrivateDnsManagementClient
from azure.identity import DefaultAzureCredential

credential = DefaultAzureCredential()
client = PrivateDnsManagementClient(credential, "YOUR_SUBSCRIPTION_ID")

zone = client.private_zones.begin_create_or_update("MyResourceGroup", "example.com", {"location": "global"})
print("Private DNS Zone created successfully")

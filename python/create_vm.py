from azure.mgmt.compute import ComputeManagementClient
from azure.identity import DefaultAzureCredential

credential = DefaultAzureCredential()
compute_client = ComputeManagementClient(credential, "YOUR_SUBSCRIPTION_ID")

vm_parameters = {
    "location": "eastus",
    "hardware_profile": {"vm_size": "Standard_B1s"},
    "storage_profile": {
        "image_reference": {
            "publisher": "Canonical",
            "offer": "UbuntuServer",
            "sku": "18.04-LTS",
            "version": "latest"
        }
    },
    "os_profile": {
        "computer_name": "MyVM",
        "admin_username": "adminuser",
        "admin_password": "SecurePass123!"
    },
    "network_profile": {
        "network_interfaces": [
            {"id": "/subscriptions/YOUR_SUBSCRIPTION_ID/resourceGroups/MyResourceGroup/providers/Microsoft.Network/networkInterfaces/MyNIC"}
        ]
    }
}

compute_client.virtual_machines.begin_create_or_update("MyResourceGroup", "MyVM", vm_parameters)
print("VM created successfully!")

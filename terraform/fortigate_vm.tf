resource "azurerm_virtual_machine" "fortigate" {
  name                  = "FortiGateVM"
  location              = "East US"
  resource_group_name   = "MyResourceGroup"
  network_interface_ids = [azurerm_network_interface.fortigate_nic.id]
  vm_size               = "Standard_D3_v2"

  storage_os_disk {
    name              = "FortiOSDisk"
    caching          = "ReadWrite"
    create_option    = "FromImage"
  }

  os_profile {
    computer_name  = "FortiGateVM"
    admin_username = "adminuser"
    admin_password = "SecurePass123!"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }
}

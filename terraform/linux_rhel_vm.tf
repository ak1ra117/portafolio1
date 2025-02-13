resource "azurerm_virtual_machine" "rhel_vm" {
  name                  = "RHELVM"
  location              = "East US"
  resource_group_name   = "MyResourceGroup"
  network_interface_ids = [azurerm_network_interface.rhel_nic.id]
  vm_size               = "Standard_B2ms"

  storage_os_disk {
    name              = "RHELOSDisk"
    caching          = "ReadWrite"
    create_option    = "FromImage"
  }

  os_profile {
    computer_name  = "RHELVM"
    admin_username = "adminuser"
    admin_password = "SecurePass123!"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }
}

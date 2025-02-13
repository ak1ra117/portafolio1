resource "azurerm_virtual_machine" "win_vm" {
  name                  = "WinVM"
  location              = "East US"
  resource_group_name   = "MyResourceGroup"
  network_interface_ids = [azurerm_network_interface.win_nic.id]
  vm_size               = "Standard_B2ms"

  storage_os_disk {
    name              = "WinOSDisk"
    caching          = "ReadWrite"
    create_option    = "FromImage"
  }

  os_profile {
    computer_name  = "WinVM"
    admin_username = "adminuser"
    admin_password = "SecurePass123!"
  }

  os_profile_windows_config {}
}

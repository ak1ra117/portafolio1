resource "azurerm_network_interface" "vm_nic" {
  name                = "VMNIC"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.main.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "example_vm" {
  name                  = "MyTerraformVM"
  location              = azurerm_resource_group.rg.location
  resource_group_name   = azurerm_resource_group.rg.name
  network_interface_ids = [azurerm_network_interface.vm_nic.id]
  vm_size               = "Standard_B2ms"

  storage_os_disk {
    name              = "osdisk"
    caching          = "ReadWrite"
    create_option    = "FromImage"
  }

  os_profile {
    computer_name  = "terraform-vm"
    admin_username = "adminuser"
    admin_password = "SecurePass123!"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }
}

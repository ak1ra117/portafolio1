resource "azurerm_virtual_machine" "docker_vm" {
  name                  = "DockerVM"
  location              = azurerm_resource_group.rg.location
  resource_group_name   = azurerm_resource_group.rg.name
  network_interface_ids = [azurerm_network_interface.vm_nic.id]
  vm_size               = "Standard_B2ms"

  storage_os_disk {
    name              = "dockerosdisk"
    caching          = "ReadWrite"
    create_option    = "FromImage"
  }

  os_profile {
    computer_name  = "docker-vm"
    admin_username = "adminuser"
    admin_password = "SecurePass123!"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "sudo apt install -y docker.io",
      "sudo systemctl start docker",
      "sudo systemctl enable docker",
      "sudo usermod -aG docker adminuser"
    ]
  }
}

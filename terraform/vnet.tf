provider "azurerm" {
  features {}
}

resource "azurerm_virtual_network" "main" {
  name                = "MyVNET"
  location            = "East US"
  resource_group_name = "MyResourceGroup"
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_network_security_group" "nsg" {
  name                = "MyNSG"
  location            = "East US"
  resource_group_name = "MyResourceGroup"

  security_rule {
    name                       = "AllowSSH"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_virtual_network_gateway" "vpn" {
  name                = "MyVPNGateway"
  location            = "East US"
  resource_group_name = "MyResourceGroup"
  type                = "Vpn"
  vpn_type            = "RouteBased"
  sku                 = "VpnGw1"
}

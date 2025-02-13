resource "azurerm_firewall" "example" {
  name                = "MyFirewall"
  location            = "East US"
  resource_group_name = "MyResourceGroup"
  sku_name            = "AZFW_VNet"
  sku_tier            = "Standard"
}

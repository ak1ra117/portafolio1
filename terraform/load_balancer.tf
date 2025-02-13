resource "azurerm_lb" "example" {
  name                = "MyLoadBalancer"
  location            = "East US"
  resource_group_name = "MyResourceGroup"
  sku                 = "Standard"
}

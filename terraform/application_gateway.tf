resource "azurerm_application_gateway" "example" {
  name                = "MyAppGateway"
  location            = "East US"
  resource_group_name = "MyResourceGroup"
  sku {
    name = "Standard_v2"
    tier = "Standard_v2"
  }
}

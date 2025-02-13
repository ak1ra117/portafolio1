resource "azurerm_private_dns_zone" "example" {
  name                = "example.com"
  resource_group_name = "MyResourceGroup"
}

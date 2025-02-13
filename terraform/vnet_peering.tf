resource "azurerm_virtual_network_peering" "peering" {
  name                         = "PeeringVNETs"
  resource_group_name          = "MyResourceGroup"
  virtual_network_name         = azurerm_virtual_network.main.name
  remote_virtual_network_id    = "/subscriptions/YOUR_SUBSCRIPTION_ID/resourceGroups/MyResourceGroup/providers/Microsoft.Network/virtualNetworks/RemoteVNET"
}

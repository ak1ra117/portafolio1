resource "azurerm_storage_account" "veeam_backup" {
  name                     = "veeambackupstorage"
  resource_group_name      = "MyResourceGroup"
  location                 = "East US"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_storage_container" "veeam_container" {
  name                  = "veeam-backup-container"
  storage_account_name  = azurerm_storage_account.veeam_backup.name
}

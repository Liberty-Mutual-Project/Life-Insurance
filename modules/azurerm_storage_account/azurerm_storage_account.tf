# This resource creates an Azure Storage Account.
# It includes the storage account's name, location, and required configuration.
# Please ensure that all necessary input values are provided correctly.

resource "azurerm_storage_account" "pagal1storage" {
  name = var.stgacc_name
  resource_group_name      = var.rg_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

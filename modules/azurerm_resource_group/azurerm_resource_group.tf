# This Terraform module creates an Azure Resource Group using the provided name and location variables.

resource "azurerm_resource_group" "pagal123" {
  name     = var.rg_name
  location = var.location

}

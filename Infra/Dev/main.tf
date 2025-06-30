
# Main module to call the child modules

# Resource Group module: Creates an Azure Resource Group using the specified name and location
module "resource_group" {
  source = "../../modules/azurerm_resource_group"

  rg_name  = var.name_rg
  location = var.location_name

}

# Storage Account module: Creates an Azure Storage Account in the above Resource Group
module "storage_account" {
  source = "../../modules/azurerm_storage_account"

  depends_on = [module.resource_group] # Ensures the resource group is created first

  rg_name     = var.name_rg
  location    = var.location_name
  stgacc_name = var.name_stgacc
  
}
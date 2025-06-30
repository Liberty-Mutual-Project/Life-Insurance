# Main module to call the child modules
module "resource_group" {
  source = "../../modules/azurerm_resource_group"

  rg_name  = var.name_rg
  location = var.location_name

}
module "storage_account" {
  source = "../../modules/azurerm_storage_account"

  depends_on = [module.resource_group]

  rg_name  = var.name_rg
  location = var.location_name
  stgacc_name = var.name_stgacc

}
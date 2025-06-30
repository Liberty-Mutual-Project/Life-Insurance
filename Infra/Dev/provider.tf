terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.23.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "paglait"
    storage_account_name = "pagalstorageacc"
    container_name       = "tfstate"
    key                  = "Dev.terraform.tfstate"
  }
}
provider "azurerm" {
  features {}
  subscription_id = "8f765261-0137-4fd7-b8de-53247b5236d0"

}
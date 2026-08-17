terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "5.0.0"
    }
  }
backend "azurerm" {
    resource_group_name = "rg5"
    storage_account_name = "ststate122"
    container_name = "bag"
    key = "mind.tfstate"
  
}
}
provider "azurerm" {
  features {}
}
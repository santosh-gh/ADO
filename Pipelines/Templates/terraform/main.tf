provider "azurerm" {
    # The "feature" block is required for AzureRM provider 2.x.
    # If you're using version 1.x, the "features" block is not allowed.
    version = "~>2.0"
    features {}
}

data "azurerm_client_config" "current" {}

terraform {
    backend "azurerm" {
        resource_group_name = "test-rg"    
        storage_account_name = "teststg8904"
        container_name = "testcontainer"
    }
}

# Create Resource Group
resource "azurerm_resource_group" "tamops" {
  name     = var.resource_group_name
  location = var.location
}
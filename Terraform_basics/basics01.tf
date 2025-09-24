terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}


provider "azurerm" { # <BLOCK TYPE> --- "<BLOCK LABEL>" "<BLOCK LABEL>"
  #resource_provider_registrations = "none" # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {} 
}


resource "azurerm_resource_group" "tintintf" { # RESOURCE BLOCK 
  name     = "tintintf" # ARGUMENT
  location = "eastus"   # ARGUMENT
}
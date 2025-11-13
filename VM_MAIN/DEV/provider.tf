terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.34.0"
    }
  }
}

provider "azurerm" {
  features {}
    
  subscription_id = "fbc9f514-7aaa-4d8e-95ef-a674a354746a"
  

}

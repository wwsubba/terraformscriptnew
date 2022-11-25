terraform {
  required_version = ">= 1.1.0"
  cloud {
    organization = "wwsubba12"

    workspaces {
      name = "wwsubbaapiworkspace"
    }
  }
}

provider "azurerm" {
  features {}
}

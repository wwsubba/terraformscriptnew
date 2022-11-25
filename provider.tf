terraform {
  cloud {
    organization = "wwsubba12"

    workspaces {
      name = "wwsubbaapiworkspace"
    }
  }
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
    azuread = {
      source  = "hashicorp/azuread"
    }
  }


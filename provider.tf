terraform {
  required_version = ">= 1.1.0"
  cloud {
    organization = "wwsubba12"

    workspaces {
      name = "wwsubbaapiworkspace"
    }
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.0.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
    }
  }
}

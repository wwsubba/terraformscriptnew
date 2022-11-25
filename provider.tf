terraform {
  required_version = "~> 1.2.0"
  cloud {
    organization = "wwsubba12"

    workspaces {
      name = "wwsubbaapiworkspace"
    }
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      use_msi = true
    }
  }
}

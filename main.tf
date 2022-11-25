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
      version = ">=3.0.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = ">= 1.0"
    }
  }
}

provider "azurerm" {
  features {}
}

provider "azuread" {
}

data "azuread_client_config" "current" {}

resource "azurerm_key_vault" "kv1" {
  name                        = "testww12"
  location                    = "East US"
  resource_group_name         = "WW-CloudServiceManagement-RG-TBDNov30"
  enabled_for_disk_encryption = true
  tenant_id                   = [data.azurerm_client_config.current.tenant_id]
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "standard"

  access_policy {
    tenant_id = [data.azurerm_client_config.current.tenant_id]
    key_permissions = [
      "Get",
    ]

    secret_permissions = [
      "Get",
    ]

    storage_permissions = [
      "Get",
    ]
  }
}

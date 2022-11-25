data "azuread_client_config" "current" {}

resource "azurerm_key_vault" "kv1" {
  name                        = "testww12subba1"
  location                    = "East US"
  resource_group_name         = var.resource_group_name
  tenant_id                   = var.tenant_id
  enabled_for_disk_encryption = true
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "standard"
}

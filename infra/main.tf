module "api-cloud-keyvaults" {
  source              = "./modules/cloud_keyvault"
  resource_group_name = var.resource_group_name
  keyvault_name       = var.keyvault_name
}

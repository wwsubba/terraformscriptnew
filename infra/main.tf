terraform {
  experiments = [module_variable_optional_attrs]
}

module "api-cloud-keyvault" {
  source = "./modules/cloud_keyvault"
  resource_group_name = var.resource_group_name
}

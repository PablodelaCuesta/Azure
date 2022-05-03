# Create a new resource group to keep the state

module "ResourceGroup" {
  source = "../modules/ResourceGroup"

  base_name = "${var.project.base_name}-${var.resource_group.name}"
  location  = var.project.location
}

module "storage-account-state" {
  source              = "../modules/StorageAccount"
  resource_group_name = module.ResourceGroup.rg_name_out

  base_name = "${var.project.base_name}${var.resource_group.name}"
  location  = var.project.location
}

module "storage-container" {
  source = "../modules/StorageResources/Container"
  storage_account_name = module.storage-account-state.name

  name = "state-container"
  access = "private"
}
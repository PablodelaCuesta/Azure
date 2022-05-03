
module "ResourceGroup" {
  source    = "./modules/ResourceGroup"
  base_name = var.resource_group["base_name"]
  location  = var.resource_group["location"]
}

module "StorageAccount" {
  source              = "./modules/StorageAccount"
  resource_group_name = module.ResourceGroup.rg_name_out
  base_name           = var.storage_account["base_name"]
  location            = var.storage_account["location"]
}

module "VNets" {
  source             = "./modules/VNets"
  resourcegroup_name = module.ResourceGroup.rg_name_out
  vnet_name          = var.vnet["base_name"]
  location           = var.vnet["location"]
  bastionhost_name   = var.bastion-name
}
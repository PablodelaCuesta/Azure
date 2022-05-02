
module "ResourceGroup" {
  source    = "./modules/ResourceGroup"
  base_name = var.rg-base-name
  location  = var.rg-location
}

module "StorageAccount" {
  source              = "./modules/StorageAccount"
  base_name           = var.stg-name
  resource_group_name = module.ResourceGroup.rg_name_out
  location            = var.stg-location
}

module "VNets" {
  source = "./modules/VNets"
  vnet_name = var.VNet-name
  resourcegroup_name = module.ResourceGroup.rg_name_out
  location = var.VNet-location
  bastionhost_name = var.bastion-name
}
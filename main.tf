
module "ResourceGroup" {
  source    = "./ResourceGroup"
  base_name = var.rg-base-name
  location  = var.rg-location
}

module "StorageAccount" {
  source              = "./StorageAccount"
  base_name           = var.stg-name
  resource_group_name = module.ResourceGroup.rg_name_out
  location            = var.stg-location
}

module "VNets" {
  source = "./VNets"
  vnet_name = var.VNet-name
  resourcegroup_name = module.ResourceGroup.rg_name_out
  location = var.VNet-location
  bastionhost_name = "testing-bastion"
}
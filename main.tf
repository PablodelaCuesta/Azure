
module "ResourceGroup" {
  source    = "./ResourceGroup"
  base_name = "TerraformExample01"
  location  = "West Europe"
}

module "StorageAccount" {
  source              = "./StorageAccount"
  base_name           = "TerraformExample01"
  resource_group_name = module.ResourceGroup.rg_name_out
  location            = "West Europe"
}

module "VNets" {
  source = "./VNets"
  vnet_name = "VNet_testing"
  resourcegroup_name = module.ResourceGroup.rg_name_out
  location = "West Europe"
  bastionhost_name = "testing-bastion"
}
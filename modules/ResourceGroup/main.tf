resource "azurerm_resource_group" "rg-testing" {
  name     = var.base_name
  location = var.location
}
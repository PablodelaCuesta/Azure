



resource "azurerm_storage_blob" "blob" {
  name = var.blob_name
  storage_account_name = var.storage_account_name
  storage_container_name = azurerm_storage_container.container.name
  type = var.blob_type
}
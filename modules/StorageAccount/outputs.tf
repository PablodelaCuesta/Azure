output "stg_act_name_out" {
    value = resource.azurerm_storage_account.example.name
}

output "name" {
  value = resource.azurerm_storage_account.example.name
}

output "key" {
  value = resource.azurerm_storage_account.example.primary_access_key
}

output "blob_endpoint" {
  value = resource.azurerm_storage_account.example.primary_blob_endpoint
}

variable "project" {
  type        = map(any)
  description = "Description of our project"
}

variable "resource_group" {
  type        = map(any)
  description = "State resource group to save our state"
}

variable "storage_account" {
  type        = map(any)
  description = "Storage"
}
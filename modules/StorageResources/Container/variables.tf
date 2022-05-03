
variable "name" {
  type = string
  description = "Name of the storage container"
}

variable "storage_account_name" {
  type = string
  description = "Storage account that we want to use it"
}

variable "access" {
  type = string
  description = "Kind of access to our container"

  validation {
    condition     = length(regexall("^(blob|container|private)$", var.access)) > 0
    error_message = "ERROR: Valid types are \"blob\", \"container\" and \"private\"!"
  }
}
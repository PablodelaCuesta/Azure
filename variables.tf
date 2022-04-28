variable "rg-base-name" {
  type = string
}

variable "rg-location" {
  type = string
}

# Storage account
variable "stg-name" {
  type = string
}

variable "stg-location" {
  type = string
}

# VNets
variable "VNet-name" {
  type = string
}

variable "VNet-location" {
  type = string
}

variable "bastion" {
  type = bool
}
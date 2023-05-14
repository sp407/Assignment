variable "vm_name" {
  type = string
}

variable "resource_group_name"
  type = string
}

variable "location" {
  type = string
}

variable "size" {
  type = string
}

variable "admin_username" {
  type = string
}

variable "network_interface_ids" {
  type = list(string)
}

variable "caching" {
  type = string
}

variable "storage_account_type" {
  type = string
}

variable "publisher" {
  type = string
}

variable "offer" {
  type = string
}

variable "sku" {
  type = string
}

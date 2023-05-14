variable "rg_name" {
    type = string
}

variable "location" {
    type = string
}

variable "vnet_name" {
    type = string
}

variable "vnet_address_space" {
    type = list(string)
}

variable "vm_subnet_name" {
    type = string
}

variable "subnet_address_prefixes" {
    type = string
}

variable "vm_nic_name" {
    type = string
}

variable "vm_name" {
    type = string
}

variable "size" {
    type = string
}

variable "admin_username" {
    type = string
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

provider "azurerm" {
    version = "=2.0.0"
    features {}
}

data "azurerm_resource_group" "rg"{
    name = var.rg_name
}

module "virtual-network"{
    source = "./modules/vnet"
    vnet_name                       = var.vnet_name
    resource_group_name             = var.resource_group_name
    location                        = var.location
    vnet_address_space              = var.vnet_address_space
}
    
 module "subnet"{
    source = "./modules/subnet"
    vm_subnet_name                  = var.vm_subnet_name
    resource_group_name             = var.resource_group_name
    vnet_name                       = var.vnet_name
    subnet_address_prefixes         = var.subnet_address_prefixes
 }

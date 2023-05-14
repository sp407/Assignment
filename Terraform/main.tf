provider "azurerm" {
    version = ">=2.72.0"
    features {}
}

data "azurerm_resource_group" "rg"{
    name                            = var.rg_name
}

module "virtual_network"{
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
     
module "network-interface"{
    source = "./modules/network-interface"
    vm_nic_name                     = var.vm_nic_name
    location                        = var.location
    resource_group_name             = var.resource_group_name
    subnet_id                       = module.virtual_network.subnet_id
}

module "virtual-machine"{
    source = "./modules/vm"
    vm_name                         = var.vm_name
    resource_group_name             = var.resource_group_name
    location                        = var.location
    size                            = var.size
    admin_username                  = var.admin_username
    network_interface_ids           = [module.network_interface.nic_id]
    caching                         = var.caching
    storage_account_type            = var.storage_account_type
    publisher                       = var.publisher
    offer                           = var.offer
    sku                             = var.sku
}

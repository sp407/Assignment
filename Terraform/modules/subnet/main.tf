resource "azurerm_subnet" "subnet" {
  name                 = var.vm_subnet
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet_name
  address_prefixes     = var.subnet_address_prefixes
}

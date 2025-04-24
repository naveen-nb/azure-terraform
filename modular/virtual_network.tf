resource "azurerm_virtual_network" "example" {
    name                = var.virtual_network_name
    address_space       = var.vnet_address_space
    location            = var.location
    resource_group_name = var.resource_group_name
    tags = {
        environment = var.environment
        owner       = var.owner
    }
}

resource "azurerm_subnet" "example" {
    name                 = var.subnet_name
    resource_group_name  = var.resource_group_name
    virtual_network_name = azurerm_virtual_network.example.name
    address_prefixes     = var.subnet_address_prefixes
}
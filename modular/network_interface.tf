resource "azurerm_network_interface" "example" {
    name                = var.network_interface_name
    location            = var.location
    resource_group_name = var.resource_group_name

    ip_configuration {
        name                          = var.ip_configuration_name
        subnet_id                    = azurerm_subnet.example.id
        private_ip_address_allocation = "Dynamic"
        public_ip_address_id         = azurerm_public_ip.example.id
    }    
}
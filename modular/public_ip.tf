resource "azurerm_public_ip" "example" {
    name                = var.public_ip_name
    location            = var.location
    resource_group_name = var.resource_group_name

    allocation_method = "Dynamic"
    sku              = "Basic"

    tags = {
        environment = var.environment
        owner       = var.owner
    }
}
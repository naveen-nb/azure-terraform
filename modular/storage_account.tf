# Create a storage account
resource "azurerm_storage_account" "example" {
    name                     = var.storage_account_name
    resource_group_name      = azurerm_resource_group.example.name
    location                 = azurerm_resource_group.example.location
    account_tier             = "Standard"
    account_replication_type = "LRS"

    tags = {
        # environment = "dev"
        environment = var.environment
        owner       = local.common_tags.owner
    }
}
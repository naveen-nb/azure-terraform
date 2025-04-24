# Output the storage account name
output "storage_account_name" {
    value = azurerm_storage_account.example.name
}

# Print the public IP address
output "public_ip" {
    value = azurerm_public_ip.example.ip_address  
}
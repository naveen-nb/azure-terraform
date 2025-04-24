resource "azurerm_linux_virtual_machine" "example" {
    name                = var.vm_name
    location            = var.location
    resource_group_name = var.resource_group_name
    size                = var.vm_size
    disable_password_authentication = false
    admin_username      = var.admin_username
    admin_password      = var.admin_password
    network_interface_ids = [
        azurerm_network_interface.example.id,
    ]
    os_disk {
        storage_account_type = "Standard_LRS"
        disk_size_gb        = 30
        caching              = "ReadWrite"        
    }
    source_image_reference {
        publisher = "Canonical"
        offer     = "0001-com-ubuntu-minimal-focal"
        sku       = "minimal-20_04-lts"
        version   = "20.04.202004230"
    }  
}
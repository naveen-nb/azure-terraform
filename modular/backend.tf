terraform {
  
  # Configure the backend to store the state file in Azure Storage
  backend "azurerm" {
    resource_group_name  = "<resource_group_name>"
    storage_account_name = "<storage_account_name>"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}

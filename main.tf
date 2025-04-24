terraform {
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "= 3.0.0"
        }
    }   

    # Remote Backend Configuration
    backend "azurerm" {
      resource_group_name  = "<resource_group_name>"
      storage_account_name = "<storage_account_name>"
      container_name       = "tfstate"
      key                  = "dev.terraform.tfstate"
    }

    required_version = ">= 1.9.0"
}

provider "azurerm" {
    features {}
}

# Define / Declare variables
variable "environment" {
    description = "The environment to deploy to"
    type        = string
    default     = "dev"  
}
variable "owner" {
    description = "The owner of the resources"
    type        = string
}
variable "location" {
    description = "The Azure region to deploy to"
    type        = string
}
variable "resource_group_name" {
    description = "The name of the resource group"
    type        = string
}
variable "storage_account_name" {
    description = "The name of the storage account"
    type        = string
}


# Local Variables
locals {
    common_tags = {
        environment = var.environment
        owner       = var.owner
    }
}

# Create a resource group
resource "azurerm_resource_group" "example" {
    name     = var.resource_group_name
    location = var.location
}

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

# Output the storage account name
output "storage_account_name" {
    value = azurerm_storage_account.example.name
}

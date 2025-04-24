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
variable "virtual_network_name" {
    description = "The name of the virtual network"
    type        = string  
}
variable "subnet_name" {
    description = "The name of the subnet"
    type        = string  
}
variable "vnet_address_space" {
    description = "Virtual network address space"
    type        = list(string)
}
variable "subnet_address_prefixes" {
    description = "Subnet address prefixes"
    type        = list(string)
}
variable "network_interface_name" {
    description = "The name of the network interface"
    type        = string
}
variable "ip_configuration_name" {
    description = "The name of the public IP address"
    type        = string
}
variable "public_ip_name" {
    description = "The name of the public IP address"
    type        = string
}
variable "vm_name" {
    description = "The name of the virtual machine"
    type        = string
}
variable "vm_size" {
    description = "The size of the virtual machine"
    type        = string
}
variable "admin_username" {
    description = "The admin username for the virtual machine"
    type        = string
}
variable "admin_password" {
    description = "The admin password for the virtual machine"
    type        = string
    sensitive   = true
}
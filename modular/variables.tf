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
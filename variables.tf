variable "prefix" {
  type        = string
  description = "This prefix will be included in the name of most resources."
}

variable "location" {
  type        = string
  description = "Azure region where the resources are created."
}

variable "env" {
  type        = string
  description = "Value for the environment tag."
}

variable "department" {
  description = "Value for the department tag."
  type        = string
  default     = "PlatformEng"
}

variable "owner" {
  description = "Value for the owner tag."
  type        = string
  default     = "web.developer"
}

variable "address_space" {
  type        = string
  description = "The address space that is used by the virtual network. You can supply more than one address space. Changing this forces a new resource to be created."
  default     = "10.0.0.0/16"
}

variable "subnet_prefix" {
  type        = string
  description = "The address prefix to use for the subnet."
  default     = "10.0.10.0/24"
}

variable "vm_size" {
  type        = string
  description = "Specifies the size of the virtual machine."
  default     = "Standard_B2s"
}

variable "packer_bucket" {
  type        = string
  description = "HCP Packer image bucket name."
  default     = "ubuntu20-nginx"
}

variable "packer_channel" {
  type        = string
  description = "HCP Packer image channel."
  default     = "development"
}

variable "vault_namespace" {
    description = "namespace to use"
}

variable "login_username" {
    description = "vault auth username"
}

variable "login_password" {
    description = "vault auth password"
}

variable "vault_address" {
    description = "url to use to access vault"
  }

variable "subscription_id" {
    description = "az sub id"
    sensitive = true
}

variable "tenant_id" {
    description = "az tenant id"
    sensitive = true
}

variable "az-vm-adminuser" {
    description = "admin user id"
}

variable "az-vm-adminpassword" {
    description = "admin user password"
    sensitive = true
}

variable "azure_subscription_id" {
    description = "subscription id associated with created resources"
    sensitive = true
}

variable "azurerm_resource_group_name" {
    description = "the resource group name - this is tied to the Vault dynamic Az creds"
}

variable "hashi_products" {
  type = list(object({
    name       = string
    color      = string
    image_file = string
  }))
  default = [
    {
      name       = "Consul"
      color      = "#dc477d"
      image_file = "hashicafe_art_consul.png"
    },
    {
      name       = "HCP"
      color      = "#ffffff"
      image_file = "hashicafe_art_hcp.png"
    },
    {
      name       = "Nomad"
      color      = "#60dea9"
      image_file = "hashicafe_art_nomad.png"
    },
    {
      name       = "Packer"
      color      = "#63d0ff"
      image_file = "hashicafe_art_packer.png"
    },
    {
      name       = "Terraform"
      color      = "#844fba"
      image_file = "hashicafe_art_terraform.png"
    },
    {
      name       = "Vagrant"
      color      = "#2e71e5"
      image_file = "hashicafe_art_vagrant.png"
    },
    {
      name       = "Vault"
      color      = "#ffec6e"
      image_file = "hashicafe_art_vault.png"
    }
  ]
}

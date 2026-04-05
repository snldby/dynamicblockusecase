variable "rg_name" {
  description = "The name of the resource group"
  type      = map(object({
    rg_name  = string
    location = string
     managed_by = optional(string)
    tags = optional(map(string))
  }))
}

variable "vnets" {

  type = map(object({


    vnet_name     = string
    location      = string
    rg_name       = string
    address_space = list(string)

    subnets = optional(map(object({
      name             = string
      address_prefixes = list(string)
      default_outbound_access_enabled = optional(bool)
    })))


  }))

}
variable "public_ips" {
  type = map(object({
    pip_name = string
    rg_name  = string
    location = string
  }))
}

variable "vms" {
  type = map(object({
    nic_name  = string
    location  = string
    rg_name   = string
    subnet_name = string
    vnet_name = string
    pip_name = string
    vm_name = string
    vm_size = string
 
    source_image_reference = map(string)
    nsg_name = string
    kv_name = string
  }))
  
}

variable "myvaults" {
  type = map(object({
    kv_name  = string
    location = string
    rg_name  = string

  }))
  description = "Name of the Key Vault to be created"
  }
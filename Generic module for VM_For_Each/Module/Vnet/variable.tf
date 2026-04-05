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

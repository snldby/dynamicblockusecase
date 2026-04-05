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
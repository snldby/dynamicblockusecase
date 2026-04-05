variable "keyvaults" {
  type = map(object({
    kv_name  = string
    location = string
    rg_name  = string
  }))
  description = "Name of the Key Vault to be created"
  }
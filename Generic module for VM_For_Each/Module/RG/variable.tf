variable "rg_name" {
  description = "The name of the resource group"
  type      = map(object({
    rg_name  = string
    location = string
     managed_by = optional(string)
    tags = optional(map(string))
  }))
}
# terraform {
#   required_providers {
#     azurerm = {
#       source = "hashicorp/azurerm"
#       version = "4.57.0"
#     }
#   }

#  backend "azurerm" {
#     use_cli              = true                                    # Can also be set via `ARM_USE_CLI` environment variable.
#     use_azuread_auth     = true                                    # Can also be set via `ARM_USE_AZUREAD` environment variable.
#     tenant_id            = "6064e371-4323-422a-bc1f-0ee3c5e3c423"  # Can also be set via `ARM_TENANT_ID` environment variable. Azure CLI will fallback to use the connected tenant ID if not supplied.
#     storage_account_name = "stg12121111"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
#     container_name       = "tfstate"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
#     key                  = "prod.terraform.tfstate"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
#   }

# }

# provider "azurerm" {
#     features {} 
#     subscription_id = "8b0ecf60-d319-4616-a8a2-27db48b9e28f"
# }
# data "azurerm_key_vault" "vmkeyvault" {
#       for_each = var.keysecretuser
#   name                = each.value.keyvault_name
#   resource_group_name = each.value.resource_group_name
# }
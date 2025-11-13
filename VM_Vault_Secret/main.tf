# resource "azurerm_key_vault_secret" "username" {
#     for_each = var.keysecretuser
#   name         = each.value.username
#   value        = each.value.username_value
#   key_vault_id = data.azurerm_key_vault.vmkeyvault[each.key].id
# }
# resource "azurerm_key_vault_secret" "password" {
#     for_each = var.keysecretuser
#   name         = each.value.password_name
#   value        = each.value.password_value
#   key_vault_id = data.azurerm_key_vault.vmkeyvault[each.key].id
# }


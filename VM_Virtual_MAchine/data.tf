data "azurerm_network_interface""nic77" {
    for_each = var.vm26june001
    resource_group_name = each.value.resource_group_name
    name = each.value.nic_name
}

# data "azurerm_key_vault" "vmkeyvault" {
#   name                = "jayantkeyvault"
#   resource_group_name = "jayant"
# }

# data "azurerm_key_vault_secret" "username" {
#   name         = "kusername"
#   key_vault_id = data.azurerm_key_vault.vmkeyvault.id
# }

# data "azurerm_key_vault_secret" "password" {
#   name         = "password"
#   key_vault_id = data.azurerm_key_vault.vmkeyvault.id
# }

data "azurerm_subnet""subnet77" {
for_each = var.nic26june001
name = each.value.subnet_name
resource_group_name = each.value.resource_group_name
virtual_network_name = each.value.vnet_name
}

data "azurerm_public_ip""pip77" {
    for_each = var.nic26june001
    name = each.value.pip_name
    resource_group_name = each.value.resource_group_name
}
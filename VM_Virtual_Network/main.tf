resource "azurerm_virtual_network" "vnet77" {
  for_each = var.vnet26june001
  name = each.value.name
  location = each.value.location
  resource_group_name = each.value.resource_group_name
  address_space = each.value.address_space
}


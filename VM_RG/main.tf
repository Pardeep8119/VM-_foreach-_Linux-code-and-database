resource "azurerm_resource_group" "rg77" {
    for_each = var.rg26june01
    name = each.value.name
    location = each.value.location
  
}


data "azurerm_mssql_server" "example" {
    for_each = var.database01
  name                = each.value.server_name
  resource_group_name = each.value.resource_group_name
}
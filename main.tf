data "azurerm_traffic_manager_geographical_location" "traffic_manager_geographical_location_lookup" {
  for_each = var.traffic_manager_geographical_location_lookup

  name = each.value.name
}


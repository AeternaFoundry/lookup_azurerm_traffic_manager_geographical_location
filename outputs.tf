output "traffic_manager_geographical_location_lookup_id" {
  description = "Map of id values across all traffic_manager_geographical_location_lookup, keyed the same as var.traffic_manager_geographical_location_lookup"
  value       = { for k, v in data.azurerm_traffic_manager_geographical_location.traffic_manager_geographical_location_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "traffic_manager_geographical_location_lookup_name" {
  description = "Map of name values across all traffic_manager_geographical_location_lookup, keyed the same as var.traffic_manager_geographical_location_lookup"
  value       = { for k, v in data.azurerm_traffic_manager_geographical_location.traffic_manager_geographical_location_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}


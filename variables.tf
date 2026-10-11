variable "traffic_manager_geographical_location_lookup" {
  description = <<EOT
Map of traffic_manager_geographical_location_lookup, attributes below
Required:
    - name
EOT

  type = map(object({
    name = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.traffic_manager_geographical_location_lookup : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
}


variable "cloud_regions_lookup" {
  description = <<EOT
Map of cloud_regions_lookup, attributes below
Required:
    - service_name
EOT

  type = map(object({
    service_name = string
  }))
}


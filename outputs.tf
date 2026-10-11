output "cloud_regions_lookup_regions" {
  description = "Map of regions values across all cloud_regions_lookup, keyed the same as var.cloud_regions_lookup except keys with no regions are omitted"
  value       = { for k, v in data.ovh_cloud_regions.cloud_regions_lookup : k => v.regions if v.regions != null && length(v.regions) > 0 }
}
output "cloud_regions_lookup_service_name" {
  description = "Map of service_name values across all cloud_regions_lookup, keyed the same as var.cloud_regions_lookup except keys with no service_name are omitted"
  value       = { for k, v in data.ovh_cloud_regions.cloud_regions_lookup : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}


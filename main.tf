data "ovh_cloud_regions" "cloud_regions_lookup" {
  for_each = var.cloud_regions_lookup

  service_name = each.value.service_name
}


locals {

  location_translation = {
      northeurope = "neu"
      westeurope = "weu"
      uksouth = "suk"
      eastus = "eus"
  }

  location_acronym = lookup(local.location_translation,lower(var.location),"unknown")
  akv_sequence_number = var.akv_sequence_number != "" ? var.akv_sequence_number : var.sequence_number
  sta_sequence_number = var.sta_sequence_number != "" ? var.sta_sequence_number : var.sequence_number
  akv_key_sequence_number = var.akv_key_sequence_number != "" ? var.akv_key_sequence_number : var.sequence_number

  # Publish all variables needed
  resource_group = "${var.entity}${var.environment}${local.location_acronym}rsg${var.workload_acronym}comm${var.sequence_number}"
  akv_name = "${var.entity}${var.environment}${local.location_acronym}akv${var.workload_acronym}comm${var.sequence_number}"
  lwk_name = "${var.entity}${var.environment}${local.location_acronym}lwk${var.workload_acronym}comm${var.sequence_number}"
  sta_name = "${var.entity}${var.environment}${local.location_acronym}sta${var.workload_acronym}comm${var.sequence_number}"
  sta_akv_key_name = "${var.entity}${var.environment}${local.location_acronym}sta${var.workload_acronym}comm${var.sequence_number}"
  vnet_name = "${var.entity}${var.environment}${local.location_acronym}vnt${var.environment}glob001"
  vnet_resource_group = "${var.entity}${var.environment}${local.location_acronym}rsg${var.environment}glob001"
}
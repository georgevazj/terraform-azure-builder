variable "entity" {
  type = string
  description = "(Required) Entity acronym. Default: san"
  default = "san"
}

variable "environment" {
  type = string
  description = "(Required) Environment acronym. Default: d1"
  default = "d1"
}

variable "location" {
  type = string
  description = "(Required) Azure region name. Default: westeurope"
  default = "westeurope"
}

variable "workload_acronym" {
  type = string
  description = "(Required) Atlas workload acronym."
}

variable "sequence_number" {
  type = string
  description = "(Required) Resource sequence number. Example: 001"
}

variable "akv_sequence_number" {
  type = string
  description = "(Optional) Key vault sequence number. Default: sequence_number value"
  default = ""
}

variable "sta_sequence_number" {
  type = string
  description = "(Optional) Storage account sequence number. Default: sequence_number value"
  default = ""
}

variable "akv_key_sequence_number" {
  type = string
  description = "(Optional) Key vault key sequence number. Default: sequence_number value"
  default = ""
}
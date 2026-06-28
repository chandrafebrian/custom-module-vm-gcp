variable "name" {
  description = "VM instance name"
  type        = string
}


variable "project_id" {
  description = "GCP project id"
  type        = string
}


variable "zone" {
  description = "GCP zone"
  type        = string
}


variable "machine_type" {
  description = "VM machine type"
  type        = string
  default     = "e2-medium"
}


variable "image" {
  description = "OS image"
  type        = string
  default     = "ubuntu-os-cloud/ubuntu-2204-lts"
}


variable "disk_size" {
  type    = number
  default = 20
}


variable "network" {
  type    = string
  default = "default"
}


variable "subnetwork" {
  type    = string
  default = null
}


variable "tags" {
  type    = list(string)
  default = []
}


variable "metadata" {
  type    = map(string)
  default = {}
}


variable "startup_script" {
  type    = string
  default = null
}


variable "labels" {
  type    = map(string)
  default = {}
}


variable "service_account_email" {
  type    = string
  default = null
}

variable "token" {
  type      = string
  sensitive = true
}
variable "cloud_id" {
  type      = string
  sensitive = true
}
variable "folder_id" {
  type      = string
  sensitive = true
}

variable "yc_zone" {
  type = string
}
variable "os_image" {
  type = string
}

variable "yc_user" {
  type      = string
  sensitive = true
}

variable "db_name" {
  type      = string
  sensitive = true
}

variable "db_user" {
  type = string
}

variable "db_password" {
  type = string
  #  sensitive = true
}

variable "https_cert_id" {
  type      = string
  sensitive = true
}

variable "datadog_api_key" {
  type      = string
  sensitive = true
}

variable "datadog_app_key" {
  type      = string
  sensitive = true
}

variable "ssh_key_path" {
  type = string
}

variable "ssh_private_key_path" {
  type = string
}

variable "datadog_url" {
  type = string
}

variable "servers" {
  type = list(string)
}

variable "disk-size" {
  type = string
}

variable "disk-type" {
  type = string
}
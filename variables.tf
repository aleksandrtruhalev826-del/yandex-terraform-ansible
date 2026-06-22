variable "cloud_id" {}

variable "folder_id" {}

variable "zone" {
  default = "ru-central1-a"
}

variable "service_account_key" {
  default = "key.json"
}

variable "image_id" {}

variable "subnet_cidr" {
  default = "10.10.0.0/24"
}

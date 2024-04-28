variable "repository_file" {
  type        = string
  default     = "../organization.yaml"
  nullable    = false
  description = "YAML file that describes"
  sensitive   = false
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "github_token" {
  type = string
}

variable "arm_storage_account_name" {
  type = string
}

variable "arm_resource_group_name" {
  type = string
}

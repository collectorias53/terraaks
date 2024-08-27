# variables.tf
variable "resource_group_name" {
  description = "The name of the resource group in which to create the ACR."
  type        = string
  default     = "rgterra1"
}

variable "location" {
  description = "The Azure region in which to create the ACR."
  type        = string
  default     = "australiacentral"
}

variable "acr_name" {
  description = "The name of the Azure Container Registry."
  type        = string
  default     = "kubeacr2"
}

variable "acr_sku" {
  description = "The SKU of the Azure Container Registry."
  type        = string
  default     = "Standard"
}

variable "admin_enabled" {
  description = "Specifies whether the admin user is enabled."
  type        = bool
  default     = false
}

variable "retention_policy_days" {
  description = "The number of days to retain untagged manifests and images."
  type        = number
  default     = 7
}

variable "retention_policy_enabled" {
  description = "Specifies whether the retention policy is enabled."
  type        = bool
  default     = false
}

variable "quarantine_policy_enabled" {
  description = "Specifies whether the quarantine policy is enabled."
  type        = bool
  default     = false
}

variable "tags" {
  description = "A mapping of tags to assign to the ACR."
  type        = map(string)
  default     = {}
}

variable "azuread_group_names" {
  type        = list(string)
  default     = null
  description = "SYSTEM GENERATED: list containing names of groups in AzureAD"
}

variable "azuread_group_ids" {
  type        = list(string)
  default     = null
  description = "SYSTEM GENERATED: list containing object IDs of groups in AzureAD"
}

variable "policies" {
  type        = list(string)
  default     = ["admin"]
  description = "A list of HashiCorp Vault policies to attach to Azure Groups."
}

variable "auth_method" {
  type        = string
  default     = null
  description = "The path of the auth method to attach the group alias to. Default to 'token'."
}

variable "create_internal_groups" {
  type        = bool
  default     = true
  description = "Whether to create a Vault-native version of the AzureAD groups"
}

output "azure_groups_map" {
  value       = local.azure_groups
  sensitive   = true
  description = "Map of Azure AD group names to Object IDs."
}

output "internal" {
  description = "Map of (INTERNAL) Azure AD group names to Object IDs."
  value       = var.create_internal_groups ? zipmap(keys(vault_identity_group.int_azure_groups), flatten(values(vault_identity_group.int_azure_groups)[*].id)) : null
}

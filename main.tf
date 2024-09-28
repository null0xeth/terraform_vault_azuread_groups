locals {
  azure_groups = zipmap(var.azuread_group_names, var.azuread_group_ids)
  accessor     = var.auth_method
}

resource "vault_identity_group" "azure_groups" {
  for_each = local.azure_groups


  name     = each.key
  type     = "external"
  policies = var.policies

  metadata = {
    version = "2"
  }
}

resource "vault_identity_group" "int_azure_groups" {
  for_each = var.create_internal_groups ? local.azure_groups : {}

  name     = "${each.key}-internal"
  type     = "internal"
  policies = var.policies

  metadata = {
    version = "2"
  }
}

resource "vault_identity_group_alias" "group-alias" {
  for_each       = local.azure_groups
  name           = each.value
  mount_accessor = local.accessor
  canonical_id   = vault_identity_group.azure_groups[each.key].id
}

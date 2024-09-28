<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) | ~>2.53.1 |
| <a name="requirement_vault"></a> [vault](#requirement\_vault) | 4.4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vault"></a> [vault](#provider\_vault) | 4.4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vault_identity_group.azure_groups](https://registry.terraform.io/providers/hashicorp/vault/4.4.0/docs/resources/identity_group) | resource |
| [vault_identity_group.int_azure_groups](https://registry.terraform.io/providers/hashicorp/vault/4.4.0/docs/resources/identity_group) | resource |
| [vault_identity_group_alias.group-alias](https://registry.terraform.io/providers/hashicorp/vault/4.4.0/docs/resources/identity_group_alias) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auth_method"></a> [auth\_method](#input\_auth\_method) | The path of the auth method to attach the group alias to. Default to 'token'. | `string` | `null` | no |
| <a name="input_azuread_group_ids"></a> [azuread\_group\_ids](#input\_azuread\_group\_ids) | SYSTEM GENERATED: list containing object IDs of groups in AzureAD | `list(string)` | `null` | no |
| <a name="input_azuread_group_names"></a> [azuread\_group\_names](#input\_azuread\_group\_names) | SYSTEM GENERATED: list containing names of groups in AzureAD | `list(string)` | `null` | no |
| <a name="input_create_internal_groups"></a> [create\_internal\_groups](#input\_create\_internal\_groups) | Whether to create a Vault-native version of the AzureAD groups | `bool` | `true` | no |
| <a name="input_policies"></a> [policies](#input\_policies) | A list of HashiCorp Vault policies to attach to Azure Groups. | `list(string)` | <pre>[<br>  "admin"<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_azure_groups_map"></a> [azure\_groups\_map](#output\_azure\_groups\_map) | Map of Azure AD group names to Object IDs. |
| <a name="output_internal"></a> [internal](#output\_internal) | Map of (INTERNAL) Azure AD group names to Object IDs. |
<!-- END_TF_DOCS -->
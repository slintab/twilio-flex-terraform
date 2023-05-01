<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_twilio"></a> [twilio](#requirement\_twilio) | >=0.4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_twilio"></a> [twilio](#provider\_twilio) | >=0.4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [twilio_studio_flows_v2.flow](https://registry.terraform.io/providers/twilio/twilio/latest/docs/resources/studio_flows_v2) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_all_channel_sid"></a> [all\_channel\_sid](#input\_all\_channel\_sid) | SID of the Flex channel for other calls | `string` | n/a | yes |
| <a name="input_all_workflow_sid"></a> [all\_workflow\_sid](#input\_all\_workflow\_sid) | SID of the Flex workflow to forward other calls to | `string` | n/a | yes |
| <a name="input_sales_channel_sid"></a> [sales\_channel\_sid](#input\_sales\_channel\_sid) | SID of the Flex channel for sales-related calls | `string` | n/a | yes |
| <a name="input_sales_workflow_sid"></a> [sales\_workflow\_sid](#input\_sales\_workflow\_sid) | SID of the Flex workflow to forward sales-related calls to | `string` | n/a | yes |
| <a name="input_support_channel_sid"></a> [support\_channel\_sid](#input\_support\_channel\_sid) | SID of the Flex channel for support-related calls | `string` | n/a | yes |
| <a name="input_support_workflow_sid"></a> [support\_workflow\_sid](#input\_support\_workflow\_sid) | SID of the Flex workflow to forward support-related calls to | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_flow_name"></a> [flow\_name](#output\_flow\_name) | Friendly name of the IVR Studio flow |
<!-- END_TF_DOCS -->
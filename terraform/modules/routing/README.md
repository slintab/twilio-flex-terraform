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
| [twilio_taskrouter_workspaces_task_channels_v1.voice](https://registry.terraform.io/providers/twilio/twilio/latest/docs/resources/taskrouter_workspaces_task_channels_v1) | resource |
| [twilio_taskrouter_workspaces_task_queues_v1.all](https://registry.terraform.io/providers/twilio/twilio/latest/docs/resources/taskrouter_workspaces_task_queues_v1) | resource |
| [twilio_taskrouter_workspaces_task_queues_v1.sales](https://registry.terraform.io/providers/twilio/twilio/latest/docs/resources/taskrouter_workspaces_task_queues_v1) | resource |
| [twilio_taskrouter_workspaces_task_queues_v1.support](https://registry.terraform.io/providers/twilio/twilio/latest/docs/resources/taskrouter_workspaces_task_queues_v1) | resource |
| [twilio_taskrouter_workspaces_v1.flex](https://registry.terraform.io/providers/twilio/twilio/latest/docs/resources/taskrouter_workspaces_v1) | resource |
| [twilio_taskrouter_workspaces_workflows_v1.default](https://registry.terraform.io/providers/twilio/twilio/latest/docs/resources/taskrouter_workspaces_workflows_v1) | resource |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_default_workflow"></a> [default\_workflow](#output\_default\_workflow) | SID of the default workflow |
| <a name="output_voice_task_channel"></a> [voice\_task\_channel](#output\_voice\_task\_channel) | SID of the voice task channel |
| <a name="output_workspace_name"></a> [workspace\_name](#output\_workspace\_name) | Friendly name of the workspace |
<!-- END_TF_DOCS -->
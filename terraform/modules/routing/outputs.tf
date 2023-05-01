output "voice_task_channel" {
  value = twilio_taskrouter_workspaces_task_channels_v1.voice.sid
  description = "SID of the voice task channel"
}

output "default_workflow" {
  value       = twilio_taskrouter_workspaces_workflows_v1.default.sid
  description = "SID of the default workflow"
}

output "workspace_name" {
  value = twilio_taskrouter_workspaces_v1.flex.friendly_name
  description = "Friendly name of the workspace"
}
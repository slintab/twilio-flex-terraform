output "VOICE_IVR_FLOW" {
  value       = module.ivr_voice.flow_name
  description = "Name of the IVR Studio flow"
}

output "TASKROUTER_WORKSPACE" {
  value       = module.routing.workspace_name
  description = "Name of the Taskrouter workspace"
}

output "PLUGIN_SAMPLE" {
  value       = module.plugin_sample.plugin_name
  description = "Name of the plugin"
}


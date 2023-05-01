terraform {
  required_providers {
    twilio = {
      source  = "twilio/twilio"
      version = ">=0.4.0"
    }
  }
}

resource "twilio_taskrouter_workspaces_v1" "flex" {
  friendly_name = "Flex Task Assignment"
}

resource "twilio_taskrouter_workspaces_task_channels_v1" "voice" {
  workspace_sid	= twilio_taskrouter_workspaces_v1.flex.sid
  friendly_name	= "Voice"
  unique_name = "voice"
}


resource "twilio_taskrouter_workspaces_task_queues_v1" "all" {
  workspace_sid	= twilio_taskrouter_workspaces_v1.flex.sid
  friendly_name	= "All"
  target_workers = "1==1"
}

resource "twilio_taskrouter_workspaces_task_queues_v1" "sales" {
  workspace_sid	= twilio_taskrouter_workspaces_v1.flex.sid
  friendly_name	= "Sales"
  target_workers = "skills HAS \"sales\""
}

resource "twilio_taskrouter_workspaces_task_queues_v1" "support" {
  workspace_sid	= twilio_taskrouter_workspaces_v1.flex.sid
  friendly_name	= "Support"
  target_workers = "skills HAS \"support\""
}

resource "twilio_taskrouter_workspaces_workflows_v1" "default" {
  workspace_sid = twilio_taskrouter_workspaces_v1.flex.sid
  friendly_name = "Default workflow"
  configuration = templatefile("../../../taskrouter/workflow.json", local.params)
}

locals{
  params = {
    "SUPPORT_QUEUE_SID" = twilio_taskrouter_workspaces_task_queues_v1.support.sid
    "SALES_QUEUE_SID" = twilio_taskrouter_workspaces_task_queues_v1.sales.sid
    "ALL_QUEUE_SID" = twilio_taskrouter_workspaces_task_queues_v1.all.sid
  }
}



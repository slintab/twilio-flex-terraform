terraform {
  required_providers {
    twilio = {
      source  = "twilio/twilio"
      version = ">=0.4.0"
    }
  }
}

resource "twilio_studio_flows_v2" "flow" {
  friendly_name  = "Voice IVR Flow with Terraform"
  commit_message = "Voice IVR flow deployed with Terraform"
  status         = "published"
  definition = templatefile("../../../studio/voice-ivr-flow.json", local.params)
}

locals{
  params = {
    "SUPPORT_WORKFLOW_SID" = var.support_workflow_sid
    "SALES_WORKFLOW_SID" = var.sales_workflow_sid
    "ALL_WORKFLOW_SID" = var.all_workflow_sid
    "SUPPORT_CHANNEL_SID" = var.support_channel_sid
    "SALES_CHANNEL_SID" = var.sales_channel_sid
    "ALL_CHANNEL_SID" = var.all_channel_sid
  }
}
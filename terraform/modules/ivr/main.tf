terraform {
  required_providers {
    twilio = {
      source  = "twilio/twilio"
      version = ">=0.4.0"
    }
  }
}

resource "twilio_studio_flows_v2" "flow" {
  friendly_name  = "IVR Flow with Terraform"
  commit_message = "IVR flow deployed with Terraform"
  status         = "published"
  definition = templatefile("../../../studio/ivr-flow.json", local.params)
}

locals{
  params = {
    "SUPPORT_WORKFLOW_SID" = var.support_workflow_sid
    "SALES_WORKFLOW_SID" = var.sales_workflow_sid
    "SUPPORT_CHANNEL_SID" = var.support_channel_sid
    "SALES_CHANNEL_SID" = var.sales_channel_sid
  }
}
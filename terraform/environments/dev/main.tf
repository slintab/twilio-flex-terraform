provider "twilio" {
  account_sid = var.TWILIO_ACCOUNT_SID
  username     = var.TWILIO_API_KEY
  password  = var.TWILIO_API_SECRET
}

provider "twiliorjpearson94" {
  account_sid = var.TWILIO_ACCOUNT_SID
  api_key     = var.TWILIO_API_KEY
  api_secret  = var.TWILIO_API_SECRET
}

terraform {
  required_providers {
    twilio = {
      source  = "twilio/twilio"
      version = ">=0.4.0"
    }
    twiliorjpearson94 = {
      source  = "RJPearson94/twilio"
      version = "0.17.0"
    }
  }

  required_version = ">= 1.1.0"

  backend "local" {}
}


module "ivr_voice" {
  source           = "../../modules/ivr-voice"
  sales_workflow_sid = module.routing.default_workflow
  support_workflow_sid = module.routing.default_workflow
  all_workflow_sid = module.routing.default_workflow
  sales_channel_sid = module.routing.voice_task_channel
  support_channel_sid = module.routing.voice_task_channel
  all_channel_sid = module.routing.voice_task_channel
}

module "routing" {
  source = "../../modules/routing"
}

module "plugin_sample" {
  source = "../../modules/plugin-sample"
}
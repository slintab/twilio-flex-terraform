terraform {
  required_providers {
    twilio = {
      source  = "RJPearson94/twilio"
      version = "0.17.0"
    }
  }
}

resource "twilio_serverless_service" "service" {
  unique_name   = "plugin-sample"
  friendly_name = "plugin-sample"
}

resource "twilio_serverless_asset" "asset" {
  service_sid       = twilio_serverless_service.service.sid
  friendly_name     = "plugin-sample"
  source           = "../../../plugins/plugin-sample/build/plugin-sample.js"
  content_type      = "text/javascript"
  path              = "/plugin"
  visibility        = "public"
}

resource "twilio_serverless_build" "build" {
  service_sid = twilio_serverless_service.service.sid

  asset_version {
    sid = twilio_serverless_asset.asset.latest_version_sid
  }

  polling {
    enabled = true
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "twilio_serverless_environment" "environment" {
  service_sid = twilio_serverless_service.service.sid
  unique_name = "plugin-sample"
}

resource "twilio_serverless_deployment" "deployment" {
  service_sid     = twilio_serverless_service.service.sid
  environment_sid = twilio_serverless_environment.environment.sid
  build_sid       = twilio_serverless_build.build.sid

  lifecycle {
    create_before_destroy = true
  }
}

resource "twilio_flex_plugin" "plugin" {
  unique_name = "plugin-sample"
  version     = "1.0.0"
  plugin_url  = "https://${twilio_serverless_environment.environment.domain_name}${twilio_serverless_asset.asset.path}" 

  lifecycle {
    create_before_destroy = true
  }
}

resource "twilio_flex_plugin_configuration" "plugin_configuration" {
  name = "plugins"
  plugins {
    plugin_version_sid = twilio_flex_plugin.plugin.latest_version_sid
  }

 
}

resource "twilio_flex_plugin_release" "plugin_release" {
  configuration_sid = twilio_flex_plugin_configuration.plugin_configuration.sid

  lifecycle {
    create_before_destroy = true
  }
}
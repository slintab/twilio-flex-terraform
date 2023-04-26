variable "sales_workflow_sid" {
  type        = string
  description = "SID of the Flex workflow to forward sales-related calls to"
}

variable "support_workflow_sid" {
  type        = string
  description = "SID of the Flex workflow to forward support-related calls to"
}

variable "sales_channel_sid" {
  type        = string
  description = "SID of the Flex channel for sales-related calls"
}

variable "support_channel_sid" {
  type        = string
  description = "SID of the Flex channel for support-related calls"
}
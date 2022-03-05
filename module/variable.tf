variable "create_metric_alarm" {
  description = "Whether to create the Cloudwatch metric alarm"
  type        = bool
  default     = true
}

variable "alarm_name" {
  description = "The descriptive name for the alarm. This name must be unique within the user's AWS account."
  type        = string
}

variable "env" {
  description = "The descriptive name for the alarm. This name must be unique within the user's AWS account."
  type        = string
  
 
}
variable "alarm_description" {
  description = "The description for the alarm."
  type        = string
  default     = null
}

variable "default_tags" {
  description = "The description for the alarm."
  type        = map

}


variable "evaluation_periods" {
  description = "The number of periods over which data is compared to the specified threshold."
  type        = number
}

variable "threshold" {
  description = "The value against which the specified statistic is compared."
  type        = number
}

variable "unit" {
  description = "The unit for the alarm's associated metric."
  type        = string
  default     = null
}

variable "metric_name" {
  description = "The name for the alarm's associated metric. See docs for supported metrics."
  type        = string
  default     = null
}

variable "namespace" {
  description = "The namespace for the alarm's associated metric. See docs for the list of namespaces. See docs for supported metrics."
  type        = string
  default     = null
}

variable "period" {
  description = "The period in seconds over which the specified statistic is applied."
  type        = string
  default     = null
}

variable "memory_freeable_too_low_threshold" {
  type        = string
  description = "Alarm threshold for the 'lowFreeableMemory' alarm"
}

variable "memory_swap_usage_too_high_threshold" {
  type        = string
  description = "Alarm threshold for the 'highSwapUsage' alarm"
}

variable "freestorage" {
  description = "The period in seconds over which the specified statistic is applied."
  type        = string
  default     = null
}
variable "statistic" {
  description = "The statistic to apply to the alarm's associated metric. Either of the following is supported: SampleCount, Average, Sum, Minimum, Maximum"
  type        = string
  default     = null
}
variable "disk_free_storage_space_too_low_threshold" {
  description = "The statistic to apply to the alarm's associated metric. Either of the following is supported: SampleCount, Average, Sum, Minimum, Maximum"
  type        = string
  default     = null
}

variable "healthyhostcount_threshold" {
  description = "The statistic to apply to the alarm's associated metric. Either of the following is supported: SampleCount, Average, Sum, Minimum, Maximum"
  type        = string
}

variable "actions_enabled" {
  description = "Indicates whether or not actions should be executed during any changes to the alarm's state. Defaults to true."
  type        = bool
  default     = true
}


variable "dimensions" {
  description = "The dimensions for the alarm's associated metric."
  type        = any
  default     = null
}

variable "alarm_actions" {
  description = "The list of actions to execute when this alarm transitions into an ALARM state from any other state. Each action is specified as an Amazon Resource Name (ARN)."
  type        = list(string)
  default     = null
}


variable "treat_missing_data" {
  description = "Sets how this alarm is to handle missing data points. The following values are supported: missing, ignore, breaching and notBreaching."
  type        = string
  default     = "missing"
}




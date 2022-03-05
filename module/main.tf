resource "aws_cloudwatch_metric_alarm" "CpuUltilization" {

  alarm_name        = "${var.alarm_name}-ec2alarm-${var.env}-Cpuutilization"
    alarm_description = "cpu ultilization"
  actions_enabled   = var.actions_enabled
  metric_name = var.metric_name
  alarm_actions             = var.alarm_actions
  statistic = var.statistic
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = var.evaluation_periods
  threshold           = var.threshold
  period = var.period
  namespace = var.namespace
  tags = var.default_tags
dimensions = var.dimensions
}

#Disk Utilization
resource "aws_cloudwatch_metric_alarm" "disk_free_storage_space_too_low" {
  alarm_name          = "${var.alarm_name}-ec2alarm-${var.env}-lowFreeStorageSpace"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = var.evaluation_periods
   metric_name         = "DiskQueueDepth"
  namespace           = var.namespace
  period              = var.period
  statistic           = var.statistic
  threshold           = var.disk_free_storage_space_too_low_threshold
  alarm_description   = "Average free storage space is too low and may fill up soon."
  tags = var.default_tags


  dimensions = var.dimensions
  }
 
 // Memory Utilization
resource "aws_cloudwatch_metric_alarm" "memory_freeable_too_low" {
  alarm_name          = "${var.alarm_name}-ec2alarm-${var.env}-memory_freeable_too_low"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = var.evaluation_periods
  metric_name         = "FreeableMemory"
  namespace           = var.namespace
  period              = var.period
  statistic           = var.statistic
  threshold           = var.memory_freeable_too_low_threshold
  alarm_description   = "Average freeable memory is too low, performance may be negatively impacted."
  tags = var.default_tags


  dimensions = var.dimensions
}

// memory
resource "aws_cloudwatch_metric_alarm" "memory_swap_usage_too_high" {
  alarm_name          = "${var.alarm_name}-ec2alarm-${var.env}-highSwapUsage"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = var.evaluation_periods
  metric_name         = "SwapUsage"
  namespace           = var.namespace
  period              = var.period
  statistic           = var.statistic
  threshold           = var.memory_swap_usage_too_high_threshold
  alarm_description   = " swap usage is too high, performance may be negatively impacted"
  tags = var.default_tags

  dimensions = var.dimensions
}

// healthyhostcount
resource "aws_cloudwatch_metric_alarm" "health" {
  alarm_name          = "${var.alarm_name}-ec2alarm-${var.env}-healthy_host"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = "1"
  metric_name         = "HealthyHostCount"
  namespace           = var.namespace
  period              = var.period
  statistic           = var.statistic
  threshold           = var.healthyhostcount_threshold
  alarm_description   = "Healthy host count for EC2 machine"
  tags = var.default_tags

  dimensions = var.dimensions
}



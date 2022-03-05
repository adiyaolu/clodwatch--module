provider "aws" {
  profile = "testinground"
  region  = "us-east-2"
}

locals {
    alarm_name = "ONG"
    evaluation_periods = "5"
    threshold = "80"
    metric_name = "CPUUtilization"
    namespace = "AWS/EC2"
    period = "120"
    statistic = "Average"
    env = "dev"
    freestorage = "FreeStorageSpace"
    disk_free_storage_space_too_low_threshold = "10000000000" // 10 GB
    memory_freeable_too_low_threshold = "256000000" #256 MB
    memory_swap_usage_too_high_threshold = "256000000" // 256 MB
    healthyhostcount_threshold = "1"
    default_tags = {
    Handler = "Onica"
    environment = "Dev"
    ManagedByTerraform = "True"
}
   # dimensions = {
  #  AutoScalingGroupName = aws_autoscaling_group.bar.name
    


}

module "Cloudwatch_alarm_asg" {
    source = "./module"
    alarm_name = local.alarm_name
    evaluation_periods = local.evaluation_periods
    threshold = local.threshold 
    metric_name = local.metric_name
    namespace = local.namespace
    period = local.period
    statistic = local. statistic
     memory_freeable_too_low_threshold = local.memory_freeable_too_low_threshold
     memory_swap_usage_too_high_threshold = local.memory_swap_usage_too_high_threshold
    env = local.env
    healthyhostcount_threshold = local.healthyhostcount_threshold
   default_tags = local.default_tags
  #  dimensions = local.dimensions 
}
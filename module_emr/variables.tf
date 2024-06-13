variable "name" {
  description = "the name of the emr"
  type        = string
}

variable "release_label" {
  description = "the release version of the emr"
  type        = string
}

variable "applications" {
  description = "the application name of the emr"
  type        = list(string)
}

variable "termination_protection" {
  description = "contains whether termination policy is disabled or not"
  type        = bool
}

variable "keep_job_flow_alive_when_no_steps" {
  description = "contains whether emr job flow is alive or not even when there is no steps to execute"
  type        = bool
}

variable "autoscaling_role" {
  description = "the arn of the auto scaling role which have auto scaling policy"
  type        = string
}

variable "subnet_id" {
  description = "the subnet id of the ec2 instance"
  type        = string
}

variable "emr_managed_master_security_group" {
  description = "the security group id of the emr managed master"
  type        = string
}

variable "emr_managed_slave_security_group" {
  description = "the security group id of the emr managed slave"
  type        = string
}

variable "instance_profile" {
  description = "the instance profile arn of the ec2 instance role"
  type        = string
}

variable "instance_count" {
  description = "the count of the instances"
  type        = number
}

variable "size" {
  description = "the number of instances"
  type        = string
}

variable "type" {
  description = "the ebs volume"
  type        = string
}

variable "volumes_per_instance" {
  description = "the no. of volumes per instance"
  type        = number
}

variable "bid_price" {
  description = "specify the bid price for Amazon EC2 Spot Instances in your Amazon EMR cluster"
  type        = string
}

variable "ebs_root_volume_size" {
  description = "determines the size of the root EBS volume attached to each instance in the cluster"
  type        = number
}

variable "service_role" {
  description = "the arn of the service role"
  type        = number
}

variable "master_instance_group_instance_type" {
  description = "the instance type of the master instance group"
  type        = string
}

variable "core_instance_group_instance_type" {
  description = "the instance type of the core instance group"
  type        = string
}
variable "team" {
  description = "Team name"
  type        = string
}
variable "environment" {
  description = "Environment name"
  type        = string
}
variable "owner" {
  description = "Owner name"
  type        = string
}
variable "owner_email" {
  description = "Owner email"
  type        = string
}

variable "path" {
  description = "the path of the bootstrap"
  type        = string
}

variable "bootstrap_action_name" {
  description = "the name of the bootstrap action"
  type        = string
}

variable "args" {
  description = "the arguments list"
  type        = list(string)
}


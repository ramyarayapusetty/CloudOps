variable "name" {
    description = "the name of the emr"
    type = string
    default = "emr-test-arn"
}

variable "release_label" {
    description = "the release version of the emr"
    type = string
    default = "emr-4.6.0"
}

variable "applications" {
    description = "the application name of the emr"
    type = list(string)
    default = [ "Spark" ]
}

variable "termination_protection" {
    description = "contains whether termination policy is disabled or not"
    type = bool
    default = false
}

variable "keep_job_flow_alive_when_no_steps" {
    description = "contains whether emr job flow is alive or not even when there is no steps to execute"
    type = bool
    default = true
}

variable "autoscaling_role" {
    description = "the arn of the auto scaling role which have auto scaling policy" 
    type = string
    default = "arn:aws:iam::533267324388:role/EMR_AutoScalingRole"
}

variable "subnet_id" {
    description = "the subnet id of the ec2 instance"
    type = string
    default = "subnet-0fdbd1df03cae8717"
}

variable "emr_managed_master_security_group" {
    description = "the security group id of the emr managed master"
    type = string
    default = "sg-0d010d5fb174c6948"
}

variable "emr_managed_slave_security_group" {
    description = "the security group id of the emr managed slave"
    type = string
    default = "sg-000134d8bfe2419be"
}

variable "instance_profile" {
    description = "the instance profile arn of the ec2 instance role"
    type = string
    default = "arn:aws:iam::533267324388:instance-profile/EC2_InstanceProfile"
}

variable "instance_count" {  
    description = "the count of the instances"
    type = number
    default = 1
}

variable "size" {
    description = "the number of instances"
    type = string
    default = "40"
}

variable "type" {
    description = "the ebs volume"
    type = string
    default = "gp2"
}

variable "volumes_per_instance" {
    description = "the no. of volumes per instance"
    type = number
    default = 1
}

variable "bid_price" {
    description = "specify the bid price for Amazon EC2 Spot Instances in your Amazon EMR cluster"
    type = string
    default = "0.30"
}

variable "ebs_root_volume_size" {
    description = "determines the size of the root EBS volume attached to each instance in the cluster"
    type = number
    default = 100
}

variable "service_role" {
    description = "the arn of the service role"
    type = number
    default = 100
}
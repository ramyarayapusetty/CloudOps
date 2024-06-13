variable "region" {
  description = "the region where you want to create elb"
  type = string
}

variable "from_port" {
    description = "the starting port range"
    type = number
}

variable "to_port" {
    description = "the ending port range"
    type = number
}

variable "aws_lb_target_group_protocol" {
    description = "the http protocol"
    type = string
}

variable "name" {
    description = "the name of the elb"
    type = string
}

variable "internal" {
    description = "value"
    type = bool
}

variable "load_balancer_type" {
    description = "the type of the load balancer"
    type = string
}

variable "target_id" {
    description = "the id of any target"
    type = string
}

variable "aws_vpc_cidr_block" {
    description = "the ip address of the vpc cider block"
    type = string
}

variable "aws_subnet_cider_block" {
    description = "the ip address of the subnet cider block"
    type = string
}

variable "ingress_cidr_block" {
    description = "the ip address of the ingress cidr block"
    type = list(string)
}

variable "aws_lb_target_group_name" {
    description = "the name of the load balancer target group name"
    type = string
}

variable "protocol" {
    description = "th eprotocol name"
    type = string
}

variable "team" {
  description = "Team name"
  type = string
}
variable "environment" {
  description = "Environment name"
  type = string
}
variable "owner" {
  description = "Owner name"
  type = string
}
variable "owner_email" {
  description = "Owner email"
  type = string
}

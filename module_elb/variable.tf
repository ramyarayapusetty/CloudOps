variable "region" {
  description = "the region where you want to create elb"
  type = string
  default = "us-east-1"
}

variable "from_port" {
    description = "the starting port range"
    type = number
    default = 80
}

variable "to_port" {
    description = "the ending port range"
    type = number
    default = 80
}

variable "protocol" {
    description = "the http protocol"
    type = string
    default = "tcp"
}

variable "name" {
    description = "the name of the elb"
    type = string
    default = "my-nlb"
}

variable "internal" {
    description = "value"
    type = bool
    default = false
}

variable "load_balancer_type" {
    description = "the type of the load balancer"
    type = string
    default = "network"
}

variable "target_id" {
    description = "the id of any target"
    type = string
    default = "i-0bdf69a0c558061f8"
}
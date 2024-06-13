variable "aws_region" {
    description = "Name of the region"
    type = string
}

variable "service_name"{
    description = "Name of the service"
    type = string
}

variable "engine_name" {
    description = "Name of the engine whether it is redis or memcached"
    type = string
}

variable "node_type" {
    description = "Type of the node"
    type = string
}

variable "cache_count" {
    description = "number of caches needed"
    type = number
}

variable "parameter_group_name" {
    description = "Group name of the paramater"
    type = string
}

variable "engine_version" {
    description = "Version of the engine"
    type = string
}

variable "port" {
    description = "port number which wanted to fetch the DB"
    type = number
}

variable "aws_region" {
    description = "Name of the region"
    type = string
    default = "us-east-1"
}

variable "service_name"{
    description = "Name of the service"
    type = string
    default = "elasticache"
}

variable "engine_name" {
    description = "Name of the engine whether it is redis or memcached"
    type = string
    default = "redis"
}

variable "node_type" {
    description = "Type of the node"
    type = string
    default = "cache.m4.large"
}

variable "cache_count" {
    description = "number of caches needed"
    type = number
    default = 1    
}

variable "parameter_group_name" {
    description = "Group name of the paramater"
    type = string
    default = "default.redis6.x"
}

variable "engine_version" {
    description = "Version of the engine"
    type = string
    default = "6.0"
}

variable "port" {
    description = "port number which wanted to fetch the DB"
    type = number
    default = 6379
}
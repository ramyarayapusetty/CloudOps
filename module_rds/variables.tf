variable "db_name" {
    description = "The custom name of our databse"
    type = string
}

variable "engine" {
    description = "The name of the engine"
    type = string
}

variable "engine_version" {
    description = "The version of the engine"
    type = string
}

variable "instance_class" {
    description = "The instance class where we want to run"
    type = string
}

variable "username" {
    description = "username to access the database"
    type = string
}

variable "password" {
    description = "password to access the database through the provided"
    type = string
}

variable "parameter_group_name" {
    description = "group name of the parameter"
    type = string
}

variable "allocated_storage" {
    description = "the allocated storage to the rds"
    type = number
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

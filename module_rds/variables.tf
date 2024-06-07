variable "db_name" {
    description = "The custom name of our databse"
    type = string
    default = "mydb"
}

variable "engine" {
    description = "The name of the engine"
    type = string
    default = "mysql"
}

variable "engine_version" {
    description = "The version of the engine"
    type = string
    default = "8.0"
}

variable "instance_class" {
    description = "The instance class where we want to run"
    type = string
    default = "db.t3.micro"
}

variable "username" {
    description = "username to access the database"
    type = string
    default = "db1"
}

variable "password" {
    description = "password to access the database through the provided"
    type = string
    default = "password"
}

variable "parameter_group_name" {
    description = "group name of the parameter"
    type = string
    default = "default.mysql8.0"
}
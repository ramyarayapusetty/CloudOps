variable "name" {
    description = "The name of the repository"
    type = string
    default = "demo-repository1"
}

variable "team" {
  description = "Team name"
  type = string
  default = "CloudOps"
}
variable "environment" {
  description = "Environment name"
  type = string
  default = "Practice"
}
variable "owner" {
  description = "Owner name"
  type = string
  default = "Ramya Sri Rayapusetty"
}
variable "owner_email" {
  description = "Owner email"
  type = string
  default = "ramyasrirayapusetty@gmail.com"
}

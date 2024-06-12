variable "dag_s3_path" {
  description = "value"
  type = string
  default = "dags/"
}

variable "execution_role_arn" {
    description = "value"
    type = string
    default = "arn:aws:iam::533267324388:role/test_role"
}

variable "name" {
    description = "the name of the environment"
    type = string
    default = "mwaa_environment1"
}

variable "security_group_ids" {
    description = "the security group ids"
    type = list(string)
    default = ["sg-0ccfe409ef3c31b7f","sg-096b1f290b5b5360b"]
}

variable "subnet_ids" {
    description = "the ids of the private subnets"
    type = list(string)
    default = ["subnet-0e43872c2b91ab228","subnet-0f3e36c2eab7fb3ce"]
  
}

variable "source_bucket_arn" {
    description = "the bucket arn"
    type = string
    default = "arn:aws:s3:::aws-logs-533267324388-us-east-1"
}
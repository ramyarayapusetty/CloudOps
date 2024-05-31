provider "aws" {
  region  = "us-east-1"
  access_key = "AKIAXYKJVTXSHZQTEHU5"
  secret_key = "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"
}
resource "aws_instance" "my_first_server" {
    ami           = "ami-04b70fa74e45c3917"
    instance_type = "t2.micro"
}
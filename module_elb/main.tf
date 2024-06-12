provider "aws" {
  region = var.region
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16" 
}

resource "aws_subnet" "my_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.1.0/24" 
}

resource "aws_security_group" "my_security_group" {
  vpc_id = aws_vpc.my_vpc.id

  ingress {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = var.protocol
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_lb" "my_lb" {
  name               = var.name
  internal           = var.internal
  load_balancer_type = var.load_balancer_type
  subnets            = [aws_subnet.my_subnet.id]

  tags = {
    Name = "My NLB"
  }
}

resource "aws_lb_target_group" "my_target_group" {
  name     = "my-target-group"
  port     = var.from_port
  protocol = var.protocol
  vpc_id   = aws_vpc.my_vpc.id

  health_check {
    protocol = "TCP"
  }
}

resource "aws_lb_target_group_attachment" "my_target_attachment" {
  target_group_arn = aws_lb_target_group.my_target_group.arn
  target_id        = var.target_id
}

output "nlb_dns_name" {
  value = aws_lb.my_lb.dns_name
}

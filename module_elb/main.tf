provider "aws" {
  region = var.region
}

resource "aws_vpc" "my_vpc" {
  cidr_block = var.aws_vpc_cidr_block
}

resource "aws_subnet" "my_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.aws_subnet_cider_block
}

resource "aws_security_group" "my_security_group" {
  vpc_id = aws_vpc.my_vpc.id

  ingress {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = var.protocol
    cidr_blocks = var.ingress_cidr_block
  }
}

resource "aws_lb" "my_lb" {
  name               = var.name
  internal           = var.internal
  load_balancer_type = var.load_balancer_type
  subnets            = [aws_subnet.my_subnet.id]

  tags = {
    team=var.team
    environment=var.environment
    owner=var.owner
    owner_email=var.owner_email
    creation_date=timestamp()
  }
}

resource "aws_lb_target_group" "my_target_group" {
  name     = var.aws_lb_target_group_name
  port     = var.from_port
  protocol = var.aws_lb_target_group_protocol
  vpc_id   = aws_vpc.my_vpc.id

  health_check {
    protocol = var.protocol
  }
}

resource "aws_lb_target_group_attachment" "my_target_attachment" {
  target_group_arn = aws_lb_target_group.my_target_group.arn
  target_id        = var.target_id
}

output "nlb_dns_name" {
  value = aws_lb.my_lb.dns_name
}


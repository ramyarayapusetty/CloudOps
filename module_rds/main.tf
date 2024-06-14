resource "aws_db_instance" "default" {
  allocated_storage    = var.allocated_storage
  db_name              = var.db_name
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  username             = var.username
  password             = var.password
  parameter_group_name = var.parameter_group_name
  tags={
      team=var.team
      environment=var.environment
      owner=var.owner
      owner_email=var.owner_email
      creation_date=timestamp()
  }
}

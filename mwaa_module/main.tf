resource "aws_mwaa_environment" "example" {
  dag_s3_path        = var.dag_s3_path
  execution_role_arn = var.execution_role_arn
  name               = var.name

  network_configuration {
    security_group_ids = var.security_group_ids
    subnet_ids         = var.subnet_ids
  }

  source_bucket_arn = var.source_bucket_arn

  tags = {
    team          = var.team
    environment   = var.environment
    owner         = var.owner
    owner_email   = var.owner_email
    creation_date = timestamp()
  }
}

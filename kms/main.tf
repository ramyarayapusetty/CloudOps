resource "aws_kms_key" "a" {
  tags={
      team=var.team
      environment=var.environment
      owner=var.owner
      owner_email=var.owner_email
      creation_date=timestamp()
  }
}

resource "aws_kms_alias" "a" {
  name          = var.name
  target_key_id = aws_kms_key.a.key_id
}

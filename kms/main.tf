resource "aws_kms_key" "a" {}

resource "aws_kms_alias" "a" {
  name          = var.name
  target_key_id = aws_kms_key.a.key_id
}
resource "aws_ecr_repository" "example" {
  name = var.name
  tags={
    team=var.team
    environment=var.environment
    owner=var.owner
    owner_email=var.owner_email
    creation_date=timestamp()
  }
}

resource "aws_ecr_lifecycle_policy" "example" {
  repository = aws_ecr_repository.example.name

  policy = <<EOF
{
    "rules": [
        {
            "rulePriority": 1,
            "description": "Expire images older than 14 days",
            "selection": {
                "tagStatus": "untagged",
                "countType": "sinceImagePushed",
                "countUnit": "days",
                "countNumber": 14
            },
            "action": {
                "type": "expire"
            }
        }
    ]
}
EOF
}

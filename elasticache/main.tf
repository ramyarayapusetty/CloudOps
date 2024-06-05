
provider "aws" {
  region  = var.aws_region
}

resource "aws_elasticache_cluster" "example" {
  cluster_id           = var.service_name
  engine               = var.engine_name
  node_type            = var.node_type
  num_cache_nodes      = var.cache_count
  parameter_group_name = var.parameter_group_name
  engine_version       = var.engine_version
  port                 = var.port
}
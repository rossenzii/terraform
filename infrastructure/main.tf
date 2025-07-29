
# Elasticache
module "elasticache" {
  source              = "./modules/elasticache"
  name                = "team1-redis"
  subnet_ids          = var.elasticache_subnet_ids
  security_group_ids  = [aws_security_group.elasticache_sg.id]
  node_type           = "cache.m4.large"
  num_nodes           = 1
  port                = 6379
  engine_version      = "7.0"
  parameter_group_name = "default.redis7"
}

resource "aws_security_group" "elasticache_sg" {
  name        = "team1-elasticache-sg"
  description = "Security group for Redis"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 6379
    to_port     = 6379
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # TODO: private ip로 변경
    description = "Allow Redis access from private networks"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
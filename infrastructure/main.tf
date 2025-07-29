
# 1. Elasticache
module "elasticache" {
  source              = "./modules/elasticache"
  vpc_id              = var.vpc_id
  name                = "team1-redis"
  subnet_ids          = var.elasticache_subnet_ids
  security_group_ids  = [module.elasticache.elasticache_sg_id]
  node_type           = "cache.m4.large"
  num_nodes           = 1
  port                = 6379
  engine_version      = "7.0"
  parameter_group_name = "default.redis7"
}

# 2. RDS
module "rds" {
  source           = "./modules/rds"
  vpc_id           = var.vpc_id
  db_subnet_ids    = var.db_subnet_ids
  db_name          = "mindscape"
  db_username      = "root"
  db_password      = var.db_password
}
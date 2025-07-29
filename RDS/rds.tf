resource "aws_db_subnet_group" "rds" {
  name       = "mindscape-rds-subnet-group"
  subnet_ids = var.db_subnet_ids
}

resource "aws_security_group" "rds" {
  name        = "rds-sg"
  description = "Allow RDS access"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = var.allowed_cidrs
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_db_instance" "rds" {
  identifier             = "mindscape-db"
  engine                 = "mysql"
  engine_version         = "8.0"
  instance_class         = "db.t3.micro"
  allocated_storage      = 20

  name                   = var.db_name
  username               = var.db_username
  password               = var.db_password

  db_subnet_group_name   = aws_db_subnet_group.rds.name
  vpc_security_group_ids = [sg-00fec91dd7bd54ed4]

  skip_final_snapshot    = true
  publicly_accessible    = false
}

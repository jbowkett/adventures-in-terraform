provider "aws" {
  region = "us-east-1"
}

resource "aws_db_instance" "example" {
  engine            = "mysql"
  identifier        = "jb-example-database-2"
  allocated_storage = 10
  instance_class    = var.instance_class
  name              = "example_database_2"
  username          = "admin"
  password          = var.db_password
  skip_final_snapshot = true
}
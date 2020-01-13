terraform {
  backend "s3" {
    bucket = "terraform-up-and-running-jb"
    key = "state/data-stores/mysql/stage-terraform.tfstate"
    region = "us-east-1"
    encrypt = true
  }
}

provider "aws" {
  region = "us-east-1"
}

module "mysql" {
  source = "../../../modules/data-stores/mysql"
  db_password = "pa55word!"
  instance_class = "db.t2.micro"
}


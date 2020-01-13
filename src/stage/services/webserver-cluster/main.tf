terraform {
  backend "s3" {
    bucket = "terraform-up-and-running-jb"
    key = "state/services/webserver-cluster/stage-terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

module "webserver_cluster" {
  source = "../../../modules/services/webserver-cluster"
  cluster_name           = "webservers-stage"
  db_remote_state_bucket = "terraform-up-and-running-jb"
  db_remote_state_key    = "state/data-stores/mysql/stage-terraform.tfstate"
}


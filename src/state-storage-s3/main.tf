provider "aws" {
  region = "us-east-1"
}
resource "aws_s3_bucket" "terraform_state" {
  bucket = "terraform-up-and-running-jb"
  versioning {
    enabled = true
  }
  lifecycle {
    prevent_destroy = true
  }
}
terraform {
  backend "s3" {
    bucket = "terraform-up-and-running-jb"
    key    = "global/s3/terraform.tfstate"
    region = "us-east-1"
  }
}

output "s3_bucket_arn"{
  value = "${aws_s3_bucket.terraform_state.arn}"
}
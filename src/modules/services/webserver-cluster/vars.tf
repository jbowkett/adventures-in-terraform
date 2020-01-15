variable "server_port" {
  description = "The port used for http requests"
  default = 8080
}

variable "cluster_name" {
  description = "The name to use for all the cluster resources"
}

variable "db_remote_state_bucket" {
  description = "The name of the S3 bucket for the database's remote state"
}

variable "db_remote_state_key" {
  description = "The path for the database's remote state in S3"
}

variable instance_type {
  default = "t2.micro"
  description = "The type of EC2 Instances to run (e.g. t2.micro)"
}
variable "min_size" {
  default = "The minimum number of EC2 Instances in the ASG"
}
variable "max_size" {
  default = "The maximum number of EC2 Instances in the ASG"
}

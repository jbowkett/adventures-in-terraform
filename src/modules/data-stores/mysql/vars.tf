variable "db_password" {
  description = "The password for the database"
}

variable instance_class {
  type = string
  default = "db.t2.micro"
}

//pa55word!
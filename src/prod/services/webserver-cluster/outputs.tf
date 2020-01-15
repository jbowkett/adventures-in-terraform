output "availability_zones"{
  value = ["${module.webserver_cluster.availability_zones}"]
}

output "external_url"{
  value = "${module.webserver_cluster.elb_dns_name}"
}
output "asg_name" {
  value = "${module.webserver_cluster.asg_name}"
}
output "elb_dns_name" {
  value = "${aws_elb.example.dns_name}"
}
output "debug"{
  value = ["${data.aws_availability_zones.all.names}"]
}
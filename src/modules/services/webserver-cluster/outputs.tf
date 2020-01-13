output "elb_dns_name" {
  value = "${aws_elb.example.dns_name}"
}
output "availability_zones"{
  value = ["${data.aws_availability_zones.all.names}"]
}
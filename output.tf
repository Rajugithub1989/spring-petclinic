output "ids2" {
  value = [
    for v in data.aws_subnet.public : v if v.available_ip_address_count > 20
  ]
}

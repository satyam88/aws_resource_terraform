output "instance_private_ip_addr" {
  value = aws_instance.name[*].private_ip
}

output "instance_public_ip_addr" {
  value = aws_instance.name[*].public_ip
}


output "instance_SG" {
  value = aws_instance.name[*].security_groups
}
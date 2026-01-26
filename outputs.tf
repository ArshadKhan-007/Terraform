#Notes: Outputs block are used to display information about the resources on the terminal.

output "ec2_public_ip" {
  value = aws_instance.Server[*].public_ip # Here [*] is used to display all the public ips of the instances
}

output "ec2_public_dns" {
  value = aws_instance.Server[*].public_dns # Here [*] is used to display all the public dns of the instances
}

output "ec2_private_ip" {
  value = aws_instance.Server[*].private_ip # Here [*] is used to display all the private ips of the instances
}


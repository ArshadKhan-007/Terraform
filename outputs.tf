# #Notes: Outputs block are used to display information about the resources on the terminal.

# output "ec2_public_ip" {
#   value = aws_instance.Server[*].public_ip # Here [*] is used to display all the public ips of the instances
# }

# output "ec2_public_dns" {
#   value = aws_instance.Server[*].public_dns # Here [*] is used to display all the public dns of the instances
# }

# output "ec2_private_ip" {
#   value = aws_instance.Server[*].private_ip # Here [*] is used to display all the private ips of the instances
# }

output "ec2_public_ip" {
  value = [
    for instance in aws_instance.Server: instance.public_ip
  ]
}

output "ec2_public_dns" {
  value = [
    for instance in aws_instance.Server: instance.public_dns
  ] 
}

output "ec2_private_ip" {
  value = [
    for instance in aws_instance.Server: instance.private_ip
  ]
}

# Notes: Whenever you're using for_each you should use for loop to display the outputs.
# Use count with for_each is not allowed.
# Use count when you want to create multiple resources with the same configuration.
# Use for_each when you want to create multiple resources with different configurations.
# tomap() function is used to convert a list to a map.
# toset() function is used to convert a list to a set.

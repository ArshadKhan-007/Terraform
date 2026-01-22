#Notes: Outputs block are used to display information about the resources on the terminal.

output "ec2_public_ip" {
    value = aws_instance.Server.public_ip
}

output "ec2_public_dns" {
    value = aws_instance.Server.public_dns
}

output "ec2_private_ip" {
    value = aws_instance.Server.private_ip
}


resource "aws_key_pair" "deployer" {
    key_name = "terraec2-key"
    public_key = file("terraec2-key.pub")
}

resource "aws_default_vpc" "default" {

}

resource "aws_security_group" "my_security_group" {
    name = "my-security-group"
    description = "My security group"
    vpc_id = aws_default_vpc.default.id

    #inbound rules
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "Allow HTTP traffic"
    }

    #outbound rules
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        description = "Allow all outbound traffic"
    }

    tags = {
      name = "my-security-group"
    }
}

#ec2 instance creation
resource "aws_instance" "Server" {
    key_name = aws_key_pair.deployer.key_name
    security_groups = [aws_security_group.my_security_group.name]
    instance_type = "t3.micro"
    ami = "ami-0ecb62995f68bb549"

    root_block_device {
      volume_size = 8
      volume_type = "gp3"
    }

    tags = {
      name = "Server"
    }
}

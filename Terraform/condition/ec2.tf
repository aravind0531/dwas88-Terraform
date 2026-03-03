resource "aws_instance" "test-server" {
  ami           = var.ami-id  # This is AWS AMI ID for Ec2 Instance
  instance_type = var.environment == "dev" ? "t3.micro" : "t3.small"  # This is AWS  Ec2 Instance condition
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = var.ec2-tag
}


resource "aws_security_group" "allow_tls" {
  name        = var.sg-name
  description = var.seg-description

   egress {
    from_port        = var.from-port
    to_port          = var.to-port
    protocol         = "-1"
    cidr_blocks      = var.sg-cird
    ipv6_cidr_blocks = ["::/0"]
  }

   ingress {
    from_port        = var.from-port
    to_port          = var.to-port
    protocol         = "-1"
    cidr_blocks      = var.sg-cird
    ipv6_cidr_blocks = ["::/0"]
  }

  
  tags = var.sg-tag
}
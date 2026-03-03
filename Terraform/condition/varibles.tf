variable "environment" {
  default = "prod"
}

variable "ami-id" {
  type = string
  default = "ami-0220d79f3f480ecf5"
  description = "RHEL 9 image "
}

variable "ec2-instance" {
    type = string
    default = "t3.micro"
    description = "AWS instnce name"
}

variable "ec2-tag" {
    type = map
    default = {
    Name = "variables-demo"
    Project = "roboshop"
    Terraform = "true"
    Environment = "dev"
    }
  
}

variable "sg-name" {
  type = string
  default = "Roboshop-allow_tls"
}

variable "seg-description" {
    type = string
    default = "Allow TLS inbound traffic and all outbound traffic"
  
}

variable "from-port" {
    type = number
    default = 0
}

variable "to-port" {
    type = number
    default = 0
}

variable "sg-cird" {
    type = list
   default = ["0.0.0.0/0"]
}


variable "sg-tag" {
    type = map
    default = {
    Name = "allow_tls"
    Project = "roboshop"
    Terraform = "true"
    Environment = "dev"
    }
  
}
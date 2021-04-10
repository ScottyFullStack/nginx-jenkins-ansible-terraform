provider "aws" {
  region = var.region
  profile = var.profile
}

resource "aws_instance" "site" {
    ami = "ami-042e8287309f5df03"
    instance_type = "t2.micro"
    key_name = "devops"
    vpc_security_group_ids = [ "sg-f72319ab", "sg-0586fa0aa906bfb79" ]
    tags = {
        Name = var.name
        group = var.group
    }
}
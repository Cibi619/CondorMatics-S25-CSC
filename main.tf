# main configuration file with module and security group definitions
module "web_instances" {
  source         = "./modules/ec2"
  instance_count = 3
  instance_type  = "t2.micro"
  ami_id         = "ami-0150ccaf51ab55a51"
}
# security group configuration for custom security groups
variable "security_groups" {
  default = {
    "web_sg" = 80,
    "ssh_sg" = 22,
    "app_sg" = 8080
  }
}
# security group resource definition
resource "aws_security_group" "custom_sg" {
  for_each = var.security_groups

  name        = each.key
  description = "Allow port ${each.value}"

  ingress {
    from_port   = each.value
    to_port     = each.value
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# modules/ec2/main.tf
resource "aws_instance" "this" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "ModularInstance-${count.index}"
  }
}

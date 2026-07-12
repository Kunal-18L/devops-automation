resource "aws_instance" "terraform_demo" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = "aws-linux"
  vpc_security_group_ids = [aws_security_group.terraform_sg.id]

  tags = {
    Name = var.instance_name
  }
}

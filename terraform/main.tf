resource "aws_instance" "terraform_demo" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = "aws-linux"
  vpc_security_group_ids = [aws_security_group.terraform_sg.id]

  root_block_device {
    volume_size = 20
    volume_type = "gp3"
  }

  tags = {
    Name = var.instance_name
  }
}


resource "aws_instance" "kubernetes_server" {
  ami                    = var.ami_id
  instance_type          = "c7i-flex.large"
  key_name               = "aws-linux"
  vpc_security_group_ids = [aws_security_group.terraform_sg.id]

  root_block_device {
    volume_size = 20
    volume_type = "gp3"
  }

  tags = {
    Name = "kubernetes-server"
  }
}

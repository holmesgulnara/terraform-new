provider "aws" {
  region = "us-east-2"
}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_instance" "web" {
  ami                    = "ami-018875e7376831abe"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  key_name               = aws_key_pair.deployer.key_name

  # connection {
  #   type     = "ssh"
  #   user     = "ec2-user"
  #   private_key = file("~/.ssh/id_rsa")
  #   host     = self.public_ip
  # }

  # provisioner "file" {
  # source = "./httpd.sh"
  # destination = "./httpd.sh"
  # }

  # provisioner "remote-exec" {
  #   script = "./httpd.sh"
  # }
  # }

  # resource "null_resource" "hello" {
  #   provisioner "local-exec" {
  #     command = "mkdir kaizen && touch hello"
  #   }
}
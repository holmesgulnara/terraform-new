provider "aws" {
    region = "us-east'2"  
}

resource "aws_instance" "web" {
  ami           = "ami-018875e7376831abe"
  instance_type = "t2.micro"
}
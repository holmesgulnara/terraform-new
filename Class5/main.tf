provider "aws" {
  region = var.region
}

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
}

resource "aws_subnet" "name" {
  vpc_id = aws.vpc.main.id
  cidr_block = var.subnet1_cidr
  map_public_ip_on_launch = true
  availability_zone = "${var.region}a"

  tags = {
    Name = "subnet1"
  }
}

resource "aws_subnet" "name2" {
  vpc_id = aws.vpc.main.id
  cidr_block = var.subnet2_cidr
  map_public_ip_on_launch = true
  availability_zone = "${var.region}b"

  tags = {
    Name = "subnet2"
  }
}

resource "aws_subnet" "name3" {
  vpc_id = aws.vpc.main.id
  cidr_block = var.subnet3_cidr
  map_public_ip_on_launch = true
  availability_zone = "${var.region}c"

  tags = {
    Name = "subnet3"
  }
}
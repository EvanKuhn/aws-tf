resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"

  tags = {
    Name = "main"
  }
}

#========================================================================================
# Public subnets
#========================================================================================

resource "aws_subnet" "public_1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.0.0/22"
  availability_zone = var.az_1

  tags = {
    Name = "public-1"
  }
}

resource "aws_subnet" "public_2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.4.0/22"
  availability_zone = var.az_2

  tags = {
    Name = "public-2"
  }
}

#========================================================================================
# Private subnets
#========================================================================================

resource "aws_subnet" "private_1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.8.0/22"
  availability_zone = var.az_1

  tags = {
    Name = "private-1"
  }
}

resource "aws_subnet" "private_2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.12.0/22"
  availability_zone = var.az_2

  tags = {
    Name = "private-2"
  }
}

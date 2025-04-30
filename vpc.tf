resource "aws_vpc" "group-2" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "public1" {
  vpc_id     = aws_vpc.group-2.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-west-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public1"
  }
}

resource "aws_subnet" "public2" {
  vpc_id     = aws_vpc.group-2.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-west-2b"
  map_public_ip_on_launch = true

  tags = {
    Name = "public2"
  }
}

resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.group-2.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-west-2c"
  map_public_ip_on_launch = true

  tags = {
    Name = "private1"
  }
}

resource "aws_subnet" "private2" {
  vpc_id     = aws_vpc.group-2.id
  cidr_block = "10.0.4.0/24"
  availability_zone = "us-west-2d"
  map_public_ip_on_launch = true

  tags = {
    Name = "private2"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.group-2.id

  tags = {
    Name = "group-2igw"
  }
}

resource "aws_subnet" "kay_app2a" {
  vpc_id     = aws_vpc.kay.id
  cidr_block = "10.0.100.0/24"
  availability_zone = "us-east-2a"
  map_public_ip_on_launch = "false"

  tags = {
    Name = "Karlen APP PVT Subnet 2a"
    Environment = "Dev"
  }
}

resource "aws_subnet" "kay_app2b" {
  vpc_id     = aws_vpc.kay.id
  cidr_block = "10.0.101.0/24"
  availability_zone = "us-east-2b"
  map_public_ip_on_launch = "false"

  tags = {
    Name = "Karlen APP PVT Subnet 2b"
    Environment = "dev"
  }
}

resource "aws_subnet" "kay_db2a" {
  vpc_id     = aws_vpc.kay.id
  cidr_block = "10.0.102.0/24"
  availability_zone = "us-east-2a"
  map_public_ip_on_launch = "false"

  tags = {
    Name = "Karlen DB PVT Subnet 2a"
    Environment = "Dev"
  }
}

resource "aws_subnet" "kay_db2b" {
  vpc_id     = aws_vpc.kay.id
  cidr_block = "10.0.103.0/24"
  availability_zone = "us-east-2b"

  tags = {
    Name = "Karlen DB PVT Subnet 2b"
    Environment = "Dev"
  }
}
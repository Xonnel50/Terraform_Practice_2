# Create Public Subnets

resource "aws_subnet" "kay_pub2a" {
  vpc_id     = aws_vpc.kay.id
  cidr_block = "10.0.104.0/24"
  availability_zone = "us-east-2a"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "Karlen PUB Subnet 2a"
    Environment = "Dev"
  }
}


resource "aws_subnet" "kay_pub2b" {
  vpc_id     = aws_vpc.kay.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-2b"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "Karlen PUB Subnet 2a"
    Environment = "Dev"
  }
}
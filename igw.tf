# Create INternet Gateway
resource "aws_internet_gateway" "kay_igw" {
  vpc_id = aws_vpc.kay.id

  tags = {
    Name = "Karlen IGW"
    Environment = "Dev"
  }
}

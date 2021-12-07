# Create Route Table

resource "aws_route_table" "kay_rt" {
  vpc_id = aws_vpc.kay.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.kay_igw.id
  }

  tags = {
    Name = "Karlen Route Table"
    Environment = "Dev"
  }
}

# Create Route Table Association

resource "aws_route_table_association" "Kay_2a" {
  subnet_id      = aws_subnet.kay_pub2a.id
  route_table_id = aws_route_table.kay_rt.id
}

resource "aws_route_table_association" "Kay_2b" {
  subnet_id      = aws_subnet.kay_pub2b.id
  route_table_id = aws_route_table.kay_rt.id
}

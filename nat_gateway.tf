# Create Elastic IP for both NAT Gateways 
resource "aws_eip" "kay_ng2a" {
}

resource "aws_eip" "kay_ng2b" {
}


# Create NAT Gateways

resource "aws_nat_gateway" "kay_ng2a" {
  allocation_id = aws_eip.kay_ng2a.id
  subnet_id     = aws_subnet.kay_app2a.id

  tags = {
    Name = "Karlen NAT Gateway2b"
    Environment = "Dev"
  }

  depends_on = [aws_internet_gateway.kay_igw]
}


resource "aws_nat_gateway" "kay_ng2b" {
  allocation_id = aws_eip.kay_ng2b.id
  subnet_id     = aws_subnet.kay_app2b.id

  tags = {
    Name = "Karlen NAT Gateway2b"
    Environment = "Dev"
  }

  depends_on = [aws_internet_gateway.kay_igw]
}
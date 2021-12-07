# Create Security Group for Bastion Hosts

resource "aws_security_group" "kay_bhsg" {
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.kay.id

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [
        "0.0.0.0/0"
        ]
  }

  tags = {
    Name = "Karlen Bastion Hosts SG"
    Environment = "Dev"
  }
}

# Create Bastion Host in Subnet 2a

resource "aws_instance" "kay_bastion_hosts_2a" {
  ami           = "ami-0b4b2d87bdd32212a" # us-east-2
  instance_type = "t2.micro"
  key_name      = aws_key_pair.ssh-key.key_name
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.kay_bhsg.id]
  subnet_id = aws_subnet.kay_pub2a.id

  tags = {
      Name = "Karlen Bastion Hosts 2a"
      Environment = "Dev"
  }
}


# Create Bastion Hosts in Subnet 2b

resource "aws_instance" "kay_bastion_hosts_2b" {
  ami           = "ami-0b4b2d87bdd32212a" # us-east-2
  instance_type = "t2.micro"
  associate_public_ip_address = true
  key_name = aws_key_pair.ssh-key.key_name
  subnet_id = aws_subnet.kay_pub2b.id
  vpc_security_group_ids = [aws_security_group.kay_bhsg.id]

  tags = {
      Name = "Karlen Bastion Hosts 2b"
      Environment = "Dev"
  }  
}
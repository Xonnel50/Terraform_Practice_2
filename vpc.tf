resource "aws_vpc" "kay" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Karlen VPC"
    Environmet = "Dev"
  }
}
resource "aws_vpc" "vpc01" {
  cidr_block = "10.0.0.0/16"

  tags = {
    "Name" = "deec1-terraform-vpc"
  }
}
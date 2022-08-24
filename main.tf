# data "aws_availability_zones" "available" {
#   state = "available"
# }

# resource "aws_vpc" "vpc01" {
#   cidr_block = "10.0.0.0/16"

#   tags = {
#     "Name" = "euc1-terraform-vpc"
#   }
# }

# resource "aws_subnet" "private_subnet" {
#   count             = 3
#   cidr_block        = "10.0.${count.index}.0/24"
#   availability_zone = data.aws_availability_zones.available.names[count.index]
#   vpc_id            = aws_vpc.vpc01.id

#   tags = {
#     "Name" = "private_subnet_${count.index + 1}"
#   }
# }
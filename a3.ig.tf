resource "aws_internet_gateway" "subbu_igw" {
  vpc_id = aws_vpc.sky_vpc.id
  tags = {
    Name = "Subbu_igw"
  }
}
###lets modify the vpc.tf delete copy from line 28 till 35 everythign change my name to your name 
resource "aws_vpc" "sky_vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "Subbu2-vpc"
  }
}
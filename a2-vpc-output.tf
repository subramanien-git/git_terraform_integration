output "vpc_id" {
  value       = aws_vpc.sky_vpc.id
  description = "vpc id of the created vpc"

}

output "subnet_ids" {
  value       = values(aws_subnet.sky_subnet)[*].id
  description = "subnet ids of the created subnets"

}
output "aws_internet_gateway" {
  value       = aws_internet_gateway.subbu_igw.id
  description = "Internet gateway id of the created IGW"

}

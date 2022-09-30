resource "aws_vpc" "example" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "example"
  }
}

output "vpc_cidr_block" {
  value = aws_vpc.example.cidr_block
}

output "vpc_id" {
  value = aws_vpc.example.id
}

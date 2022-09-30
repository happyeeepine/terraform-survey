resource "aws_route_table" "private_0" {
  vpc_id = module.example_vpc.vpc_id
}

resource "aws_route_table" "private_1" {
  vpc_id = module.example_vpc.vpc_id
}

resource "aws_route" "private_0" {
  route_table_id         = aws_route_table.private_0.id
  nat_gateway_id         = aws_nat_gateway.nat_gateway_0.id
  destination_cidr_block = "0.0.0.0/0"
}

resource "aws_route" "private_1" {
  route_table_id         = aws_route_table.private_1.id
  nat_gateway_id         = aws_nat_gateway.nat_gateway_1.id
  destination_cidr_block = "0.0.0.0/0"
}

resource "aws_route_table_association" "private_0" {
  subnet_id      = module.example_vpc.subnet_private_0
  route_table_id = aws_route_table.private_0.id
}

resource "aws_route_table_association" "private_1" {
  subnet_id      = module.example_vpc.subnet_private_1
  route_table_id = aws_route_table.private_0.id
}

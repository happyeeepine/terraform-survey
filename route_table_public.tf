resource "aws_route_table" "public" {
  vpc_id = module.example_vpc.vpc_id
}

resource "aws_route" "public" {
  route_table_id         = aws_route_table.public.id
  gateway_id             = aws_internet_gateway.example.id
  destination_cidr_block = "0.0.0.0/0"
}

resource "aws_route_table_association" "public_0" {
  subnet_id      = module.example_vpc.subnet_public_0
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public_1" {
  subnet_id      = module.example_vpc.subnet_public_1
  route_table_id = aws_route_table.public.id
}

resource "aws_internet_gateway" "example" {
  vpc_id = module.example_vpc.vpc_id
}

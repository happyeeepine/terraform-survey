resource "aws_db_subnet_group" "example" {
  name       = "example"
  subnet_ids = [module.example_vpc.subnet_private_0, module.example_vpc.subnet_private_1]
}

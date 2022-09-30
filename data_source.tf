module "example_vpc" {
  source = "./modules/vpc"
}

module "example_sg" {
  source      = "./modules/security_group"
  name        = "module-sg"
  vpc_id      = module.example_vpc.vpc_id
  port        = 80
  cidr_blocks = ["0.0.0.0/0"]
}

module "http_sg" {
  source      = "./modules/security_group"
  name        = "http-sg"
  vpc_id      = module.example_vpc.vpc_id
  port        = 80
  cidr_blocks = ["0.0.0.0/0"]
}

module "https_sg" {
  source      = "./modules/security_group"
  name        = "https-sg"
  vpc_id      = module.example_vpc.vpc_id
  port        = 443
  cidr_blocks = ["0.0.0.0/0"]
}

module "http_redirect_sg" {
  source      = "./modules/security_group"
  name        = "http-redirect-sg"
  vpc_id      = module.example_vpc.vpc_id
  port        = 8080
  cidr_blocks = ["0.0.0.0/0"]
}

module "mysql_sg" {
  source      = "./modules/security_group"
  name        = "mysql-sg"
  vpc_id      = module.example_vpc.vpc_id
  port        = 3306
  cidr_blocks = [module.example_vpc.vpc_cidr_block]
}
module "redis_sg" {
  source      = "./modules/security_group"
  name        = "redis_sg"
  vpc_id      = module.example_vpc.vpc_id
  port        = 6379
  cidr_blocks = [module.example_vpc.vpc_cidr_block]
}

#module "security_groups" {
# source          = "./modules/security_groups"
#security_groups = var.security_groups
#vpc_id          = aws_vpc.main.id
#}

module "security-groups" {
  source  = "app.terraform.io/summercloud/security-groups/aws"
  version = "1.0.0"
  # insert required variables here
  vpc_id          = aws_vpc.main.id
  security_groups = var.security_groups
  
}

#module "vpc" {
# source = "./modules/vpc"

#name = "ec2homework"
#cidr = "10.0.0.0/16"

#azs             = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
#private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
#public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

#enable_nat_gateway = true
#enable_vpn_gateway = true

#tags = {
# Terraform = "true"
#Environment = "dev"
#}
#}
module "ec2" {
  source = "./ec2"
  
  your_ip = var.your_ip
  subnet_id = module.network.public_subnet_id
  vpc_id = module.network.vpc_id
}

module "network" {
  source = "./network"
  region = var.region
}
module "vpc" {
    source = "./modules/01-vpc"
    cidr_block = var.cidr_block
}

module "subnet" {
    source = "./modules/02-subnet"
    vpc_id = module.vpc.vpc_id
    cidr_block = var.public_subnet
    avz = var.avz
}

module "igw" {
    source = "./modules/03-igw"
    vpc_id = module.vpc.vpc_id
}

module "route_table" {
    source = "./modules/04-route_table"
    vpc_id = module.vpc.vpc_id
    subnet_id = module.subnet.subnet_id
    gateway_id = module.igw.gateway_id
}
module "sec_group" { 
    source = "./modules/05-security_group"
    vpc_id = module.vpc.vpc_id
}

module "my_ec2" {
    source = "./modules/06-ec2app"
    subnet_id = module.subnet.subnet_id
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    sg_id = module.sec_group.security_group_id
    user_data = file("${path.module}/scripts/user_data.sh")
}
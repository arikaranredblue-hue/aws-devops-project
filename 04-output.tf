output "vpc_id" {
    value = module.vpc.vpc_id
}
output "subnet_id" {
    value = module.subnet.subnet_id
}

output "gateway_id" {
    value = module.igw.gateway_id
}
output "route_table_id" {
    value = module.route_table.route_table_id
}

output "route_id" {
    value = module.route_table.route_id
}

output "route_assoc_id" {
    value = module.route_table.route_assoc_id
}

output "security_group_id" {
    value = module.sec_group.security_group_id
}

output "my_ec2" {
    value = module.my_ec2.myec2_id
}
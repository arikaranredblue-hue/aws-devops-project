resource "aws_route_table" "my_pub_route" {
    vpc_id = var.vpc_id
}

resource "aws_route" "route" {
    route_table_id = aws_route_table.my_pub_route.id
    destination_cidr_block = "0.0.0.0/0"

    gateway_id = var.gateway_id
}

resource "aws_route_table_association" "assoc" {
    subnet_id = var.subnet_id
    route_table_id = aws_route_table.my_pub_route.id
}
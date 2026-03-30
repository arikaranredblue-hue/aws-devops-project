output "route_table_id" {
    value = aws_route_table.my_pub_route.id
}

output "route_id" {
    value = aws_route.route.id
}

output "route_assoc_id" {
    value = aws_route_table_association.assoc.id
}
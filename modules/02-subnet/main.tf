resource "aws_subnet" "my_pub" {
    vpc_id = var.vpc_id
    cidr_block = var.cidr_block
    availability_zone = var.avz
}
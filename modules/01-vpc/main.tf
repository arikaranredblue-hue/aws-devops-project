resource "aws_vpc" "my_app_vpc" {
    cidr_block = var.cidr_block
}
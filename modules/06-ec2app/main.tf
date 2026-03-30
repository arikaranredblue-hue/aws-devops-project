resource "aws_instance" "my_ec2" {
    ami = var.ami
    instance_type = var.instance_type
    subnet_id = var.subnet_id
    vpc_security_group_ids = [var.sg_id]
    associate_public_ip_address = true
    key_name = var.key_name
    user_data = var.user_data

}
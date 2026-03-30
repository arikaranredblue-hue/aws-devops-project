resource "aws_security_group" "my_sg" {
    vpc_id = var.vpc_id

    ingress { 
        description = "Allow SSH"
        from_port =  22 
        to_port   =  22
        protocol  = "tcp"
        cidr_blocks = ["49.37.194.175/32"]
    }

    ingress {
        description = "Allow HTTP"
        from_port = 80
        to_port   = 80
        protocol  = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        description = "Allow From Anywhere"
        from_port   =  0
        to_port     =  0
        protocol    =  "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    
}
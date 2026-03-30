variable "subnet_id" {}
variable "ami" {}
variable "instance_type" {}
variable "key_name" {}
variable "sg_id" {}
variable "user_data" {
  description = "User data script"
  type        = string
}
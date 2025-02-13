data "terraform_remote_state" "vpc_remote_data" {
  backend = "s3"
  config = {
    bucket  = "myterraform-bucket-state-kimjw"
    key     = "aws_eks/terraform.tfstate"
    profile = "admin_user"
    region  = "ap-northeast-2"
  }
}

locals {
  tcp_protocol = "tcp"
  any_port     = 0
  any_protocol = "-1"
  all_network  = "0.0.0.0/0"
}

variable "db_port" {
  description = "RDS DB Port"
  type        = string
}

variable "db_name" {
  description = "RDS DB Name"
  type        = string
}

variable "db_username" {
  description = "RDS DB UserName"
  type        = string
}

variable "db_password" {
  description = "RDS DB Password"
  type        = string
}
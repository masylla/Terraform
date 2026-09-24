variable "vpc_id" {
  description = "The ID of the VPC where the webserver will be deployed."
  type        = string
}

variable "cidr_block" {
  description = "The CIDR block for the subnet where the webserver will be deployed."
  type        = string
}

variable "ami" {
  description = "The AMI to use for the webserver."
  type        = string
}

variable "instance_type" {
  description = "The type of EC2 instance to use for the webserver."
  type        = string
}

variable "webserver_name" {
  description = "The name of the webserver."
  type        = string
}

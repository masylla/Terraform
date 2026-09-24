provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

}

module "webserver-dakar" {
  source         = "../modules/webserver"
  vpc_id         = aws_vpc.main.id
  cidr_block     = "10.0.1.0/24"
  ami            = "ami-0bdc7d025135d7b49" # Example AMI ID, replace with a valid one
  instance_type  = "t3.micro"
  webserver_name = "dakar"
}
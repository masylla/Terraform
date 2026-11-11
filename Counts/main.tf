terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "instance_dev" {
  count         = 2
  ami           = "ami-0bdc7d025135d7b49"
  instance_type = "t3.micro"
  lifecycle {
    create_before_destroy = true
    #prevent_destroy = true
  }

  tags = {
    Env          = "Dev-Lab-${count.index + 1}"
    time_created = formatdate("YYYY-MM-DD HH:MM:ss", timestamp())
  }

  depends_on = [aws_iam_user.account_3]
}
resource "aws_iam_user" "account_3" {
  for_each = toset(["user1", "user2", "user3"])
  name     = each.value
}

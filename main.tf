terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

#you can create vpc before create instance and allocate your instance to your vpc
# Create a VPC
# resource "aws_vpc" "example" {
#   cidr_block = "10.0.0.0/16"
# }

#but in this tutorial i am going to use default VPC, so once i am goin to run my this terrafrom code, aws will create VPC for me

resource "aws_instance" "example" {
    ami = "ami-0427090fd1714168b"
    instance_type = "t2.micro"
}
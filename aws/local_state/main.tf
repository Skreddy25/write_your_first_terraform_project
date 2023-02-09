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
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  count = 2
  ami           = "ami-007868005aea67c54"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform_Demo"
  }
}


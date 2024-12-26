# Configure the AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.67.0"
    }
  }
}
provider "aws" {
  region = "ap-south-1"
  profile = "terraform"
}

# Create an EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-0fd05997b4dff7aac"
  instance_type = "t2.micro"
  key_name = "PuneKey"
  tags = {
    "Name" = "My instance"
  }
}

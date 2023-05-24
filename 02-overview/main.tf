terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0df7a207adb9748c7" # Ubuntu 22.04 LTS // ap-southeast-1
  instance_type = "t3.micro"
}

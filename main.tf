terraform {

  # backend for storing terraform state
  # cloud {
  #   organization = "milanvojnovic-org"
  #   workspaces {
  #     name = "Example-Workspace-milanoid"
  #   }
  # }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.11"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  region                   = "eu-west-1" # Ireland
  shared_config_files      = ["/Users/milan/.aws/config"]
  shared_credentials_files = ["/Users/milan/.aws/credentials"]
  profile                  = "milanoid"
}

resource "aws_instance" "app_server" {
  ami             = "ami-08ca3fed11864d6bb" # Ubuntu
  #ami             = "ami-0a8dc52684ee2fee2" # Amazon Linux 2
  instance_type   = "t2.micro"
  tags = {
    Name = var.instance_name
  }
}

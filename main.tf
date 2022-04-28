terraform {

  # todo - find out how to authenticate to StatsPerform AWS account in the Terraform Cloud
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
  profile                  = "apifeeds-dev"
}

resource "aws_instance" "app_server" {
  ami             = "ami-08ca3fed11864d6bb" # Ubuntu
  #ami             = "ami-0a8dc52684ee2fee2" # Amazon Linux 2
  instance_type   = "t2.micro"
  # subnet_id - needed as no default VPC assigned to my user@Stats
  subnet_id       = "subnet-0dfda3416ed62f915"
  tags = {
    Name = var.instance_name
  }
}

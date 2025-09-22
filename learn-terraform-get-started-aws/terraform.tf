# Terraform block configures Terraform itself,
# including which providers to install
# It is recommended to configure Terraform block in a dedicated file
# -> tarraform.tf

# Provider - a binary to interact with a specific cloud provider via API

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.92" # any major version 5, minor version 92 or higher
    }
  }

  required_version = ">= 1.2" # any version greater or equal to 1.2
}

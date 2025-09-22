# Options to apply to all resources managed by provider
provider "aws" {
  region = "eu-central-1" # Frankfurt
}


# data blocks for querying existing resources
# fetches data about latest Ubuntu AMI, no need to hardcode AMI ID
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Canonical
}

# resource block defines a component of your infrastructure
resource "aws_instance" "app_server" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  tags = {
    Name = "learn-terraform"
  }
}

# Designate a cloud provider, region, and credentials
provider "aws" {
  # note: credentials read from "~/.aws/credentials" file
  profile = "udacity"
  region  = "us-east-1"
}

# provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "udacity-t2" {
  count         = 4
  ami           = "ami-0ed9277fb7eb570c9"
  instance_type = "t2.micro"
  tags = {
    Name = "Udacity T2"
  }
}

# provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "udacity-m4" {
  count         = 0
  ami           = "ami-0ed9277fb7eb570c9"
  instance_type = "m4.large"
  tags = {
    Name = "Udacity M4"
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "testing" {
  ami           = "ami-0fe0b2cf0e1f25c8a" # eu-west-1
  instance_type = "t2.micro"

  network_interface {
    network_interface_id = aws_network_interface.testing.id
    device_index         = 0
  }
}

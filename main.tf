provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "testing" {
  ami           = "ami-0fe0b2cf0e1f25c8a" # eu-west-1
  instance_type = "t2.micro"

}

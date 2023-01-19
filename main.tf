provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "testing" {
  ami           = "ami-08c149f9b2ace933d" # eu-west-1
  instance_type = "t2.micro"

}

provider "aws" {
  region  = "eu-west-3"
  access_key = "AKIA6N5PSL27LD4RL6DI"
  secret_key = "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"
}

resource "aws_vpc" "mainVPC" {
  cidr_block       = "10.0.0.0/16"
  tags = { Name = "mainVPCTag" }
}

variable "subnet_cidr_block" {
  description = "subnet cidr block"
}
resource "aws_subnet" "mainSubnet" {
  vpc_id = aws_vpc.mainVPC.id
  cidr_block =  var.subnet_cidr_block
  availability_zone = "eu-west-3a"
  tags = { Name = "MainSubnetTag"  }
}

output "mainvpc_id" {
  value = aws_vpc.mainVPC.id
}
output "mainvpcsubnet_id" {
  value = aws_subnet.mainSubnet.id
}

#terraform init
#terraform plan
#terraform apply

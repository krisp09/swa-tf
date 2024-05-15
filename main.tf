/*
resource "aws_instance" "app_server" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = var.instance_type
 
  tags = {
    Name = "TestServerInstance"
  }
}
*/
module "ec2-instance" {
  source  = "./ec2-module/"
  //version = "5.6.1"
  instance_type = var.instance_type
  ami = var.ami
}
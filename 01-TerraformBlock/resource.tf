resource "aws_instance" "my-ec2-vm" {
  ami               = "ami-047a51fa27710816e"
  instance_type     = "t2.micro"
  #availability_zone = "us-east-1a"
  availability_zone = "us-east-1b"
  count = 2
  tags = {
    "Name" = "web"  
  }

  lifecycle {
    create_before_destroy = true
  }
}

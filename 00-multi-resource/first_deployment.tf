# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
  #access_key = "XXXXXX"
  #secret_key = "XXXXXXX"
}

// This is my AWS EC2 Provsion Block 
resource "aws_instance" "frontend" {
  ami           = "ami-03f38e546e3dc59e1"
  instance_type = "t2.micro"
  tags = {
    Name = "FrontEnd-VM"
  }
}


// This is my AWS EC2 Provsion Block 
resource "aws_instance" "backend" {
  ami           = "ami-03f38e546e3dc59e1"
  instance_type = "t2.micro"
  tags = {
    Name = "Backend-VM"
  }
}



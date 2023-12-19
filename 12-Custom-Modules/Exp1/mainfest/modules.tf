module "frontend" { 
    source = "../modules/ec2"
}


module "jboss" { 
    source = "../modules/ec2"
    ec2_instance_count = 2
    project-name = "Jboss-App"
}

module "backend" { 
    source = "../modules/ec2"
    ec2_instance_count = var.backend_count
    project-name = var.backend_project_name
}

resource "aws_instance" "mymanualinstance" {
    instance_type = "t2.micro"
    ami = "ami-0ee4f2271a4df2d7d"
    tags = {
      "Name" = "mymanualinstance"
      "ManagedBy" = "Terraform"
    }
}

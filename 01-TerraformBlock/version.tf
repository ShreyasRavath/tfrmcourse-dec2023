#Terraform Block
terraform {
    required_version = ">= 1.5.2"
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "> 4.0"
      }

    }
}
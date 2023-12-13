terraform {
    backend "s3" {
      bucket            = "terraform-shreyasdec2023"
      region            = "us-east-1"
      key               = "remotestatefile/terraform.tfstate"
      dynamodb_table    = "terraform-dev-state-table"
    }
    

    required_providers {
      aws = {
        source = "hashicorp/aws"
      } 
   }
}
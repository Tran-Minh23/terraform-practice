terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0"
    }
  }
 
#   backend "s3" {
#     bucket                  = "tf-awesome-backend"
#     key                     = "multi-environments/staging/terraform.tfstate"
#     region                  = "ap-southeast-1"
#     profile                 = "tf-awesome"
#   }
}

provider "aws" {
  profile = "default"
  region  = var.AWS_REGION
}
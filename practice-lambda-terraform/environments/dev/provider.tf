terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0"
    }
  }

  backend "s3" {
    bucket                  = "tf-awesome-backend-dev"
    key                     = "terraform.tfstate"
    region                  = "ap-southeast-1"
    profile                 = "mink"
    dynamodb_table          = "tf-awesome-backend-dev-table"
  }
}

provider "aws" {
  profile = "mink"
  region  = var.AWS_REGION
}
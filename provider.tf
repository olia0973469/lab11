terraform {
  backend "s3" {
    bucket = "577125335672-2025-terraform-tfstate"
    key = "dev/terraform.tfstate"
    region = "eu-central-1"
    dynamodb_table = "577125335672-2025-terraform-tfstate-lock"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-central-1"
}

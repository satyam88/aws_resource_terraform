terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.55.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

#Terraform alias: Multiple Provider Configuration

provider "aws" {
  region = "ap-southeast-1"
  alias  = "syg"
}
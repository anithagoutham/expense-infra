terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }

  backend "s3" {
    bucket = "81-remote-state-devo"
    key = "expense-infr-00-vpc"
    region = "us-east-1"
    dynamodb_table = "81-locking-devo"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
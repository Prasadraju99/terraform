terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.72.0"
    }
  }
  backend "s3" {
    bucket         = "18oct-awsbucket"
    key            = "demo-state"
    region         = "us-east-1"
    dynamodb_table = "18oct-table"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

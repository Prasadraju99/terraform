terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.72.0"
    }
  }
  backend "s3" {
    bucket = "cloud-remote-state"
    key    = "demo-state"
    region = "us-east-1"
    dynamodb_table = "oct17-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

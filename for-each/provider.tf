terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.62.0"
    }
  }
  backend "s3" {
    bucket = "neela-remote-state"
    key = "each-remote-state"
    region = "us-east-1"
    dynamodb_table = "neelareddy.locking"
  }
}

#Providers authentication here
provider "aws" {
  region = "us-east-1"
}
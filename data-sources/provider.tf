terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.62.0"
    }
  }
}

#provider authentication here
provider "aws" {
  region = "us-east-1"
}
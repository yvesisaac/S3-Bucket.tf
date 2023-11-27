
terraform {
  required_version = "1.6.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.23.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_s3_bucket" "projeto-bucket" {
  bucket = "projeto-bucket-200326"
  acl    = "private"

  tags = {
    Name        = "bucket-projeto"
    Environment = "Dev"
    Managedby   = "Terraform"
  }
}

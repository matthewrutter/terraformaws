terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-unique-tf-test-bucket98765asdfasdf123"
  # You can omit the ACL if it's not supported
}

output "bucket_name" {
  value = aws_s3_bucket.example.bucket
}
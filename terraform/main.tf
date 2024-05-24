terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0.0"
    }
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "my-unique-tf-test-bucket98765asdfasdf12"
  # You can omit the ACL if it's not supported
}
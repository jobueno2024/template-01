terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "ap-northeast-1"  # Tokyo region
}

# Example resource (can be modified based on your needs)
resource "aws_s3_bucket" "example" {
  bucket = "my-test-bucket"
}

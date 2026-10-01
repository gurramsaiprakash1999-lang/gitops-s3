terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-2"
}

# S3 bucket names must be globally unique across all AWS accounts.
# Replace 'unique-bucket-name-student-98765' with your own custom name!
resource "aws_s3_bucket" "my_bucket" {
  bucket = "gitops-s3-bucket-1"

  tags = {
    Name        = "My GitOps Bucket"
    Environment = "Dev"
    CreatedBy   = "GitHub-Actions-Terraform"
  }
}

terraform {
  required_version = "~> 1.9.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "affan1421"
    key            = "eks/terraform.tfstate"   # Path to the state file within the bucket
    region         = "ap-south-1"
    dynamodb_table = "JenkinsLockTable"    # Optional, for state locking
  }
}

provider "aws" {
  region  = var.aws-region
}

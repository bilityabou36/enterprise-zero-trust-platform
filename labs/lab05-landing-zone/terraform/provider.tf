terraform {
  backend "s3" {
    bucket         = "abou-bility-tf-state-2026-001"
    key            = "lab5/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
  }
}

provider "aws" {
  region = "us-east-1"
}

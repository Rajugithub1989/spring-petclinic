terraform {
  #backend "s3" {}
  backend "s3" {
    bucket = "mp-aws-cicd-terraform-backend-bucket"
    key = "terraform.tfstate"
    region = "us-west-2"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.41.0"
    }
  }
}

provider "aws" {
  region = var.region
  default_tags {
    tags = {
      Environment = var.environment
      Team        = var.team
      Application = var.project
      Platform    = var.platform
      Terraform   = "true"
    }
  }
}
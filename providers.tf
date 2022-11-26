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
      version = ">= 3.63.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
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
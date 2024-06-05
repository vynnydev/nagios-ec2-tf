terraform {
  cloud {
    organization = "vynnydevops"

    workspaces {
      name = "studies"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.50.0"
    }
  }
}

provider "aws" {
  region                   = var.aws_region
  shared_config_files      = [".aws/config"]
  shared_credentials_files = [".aws/credentials"]
  profile                  = "fiap-iac"
}
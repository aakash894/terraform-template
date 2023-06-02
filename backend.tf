terraform {
  backend "remote" {
    organization = "podtfe"
    hostname     = "app.terraform.io"
    workspaces {
      name = "sentinals-policy-checks"
    }
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

variable "region" {}

provider "aws" {
  # Configuration options
  region     = var.region
}

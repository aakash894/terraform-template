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

variable "access_key" {}

variable "secret_key" {}

provider "aws" {
  # Configuration options
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

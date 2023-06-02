terraform {
  backend "remote" {
    organization = "podtfe"
    hostname     = "nvwlminfhcts001.dryicelabs.com"
    workspaces {
      name = "sentinal-finops-ec2"
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

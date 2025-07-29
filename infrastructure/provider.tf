terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "remote" {
    organization = "mindscape_team1"
    workspaces {
      name = "mindscape_team1"
    }
  }
}


provider "aws" {
  region = var.region
}

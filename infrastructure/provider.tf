terraform {
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

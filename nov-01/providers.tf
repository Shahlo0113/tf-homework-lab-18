terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  cloud {
    organization = "summercloud"

    workspaces {
      name = "lab-instance"
    }
  }
}

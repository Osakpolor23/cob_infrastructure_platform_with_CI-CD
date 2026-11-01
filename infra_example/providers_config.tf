terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.58.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.9.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.9.0"
    }
  }
}

provider "aws" {
  region = var.region
}

provider "local" {
  # Configuration options
}

provider "random" {
  # Configuration options
}
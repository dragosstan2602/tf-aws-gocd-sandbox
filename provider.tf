terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  backend "s3" {
    bucket         = "tf-state-bucket-20220824"
    key            = "gocd_state/tf-state.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "tf-state-db"
  }
}

provider "aws" {
  region = "eu-central-1"
}


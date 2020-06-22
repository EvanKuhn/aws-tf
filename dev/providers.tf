provider "aws" {
  version = "~> 2.0"
  region  = var.region
}

terraform {
  backend "s3" {
    bucket = "ejkuhn"
    key    = "terraform/aws-tf/dev/state.tf"
    region = "us-west-2"
  }
}

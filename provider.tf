provider "aws" {
    region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "pa11-remote-state"
    key    = "eksctl"
    region = "us-east-1"
    dynamodb_table = "pa11-locking"
  }
}

terraform {
  backend "s3" {
    bucket = "terraform-bug-18891"
    key = "terraform-state-18891-base.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

output "change_map" {
  value = "I am a string, and I get on your ping."
}
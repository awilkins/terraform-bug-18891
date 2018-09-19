
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
  value = {
    one = [ "list 1", "list 2" ]
    two = "string 2" 
  }
}
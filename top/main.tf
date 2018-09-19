
terraform {
  backend "s3" {
    bucket = "terraform-bug-18891"
    key = "terraform-state-18891-top.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

data "terraform_remote_state" "base" {
  backend = "s3"
  config {
    bucket = "terraform-bug-18891"
    key = "terraform-state-18891-base.tfstate"
    region = "us-east-1"
  }
}


module "pass_me_a_param" {
  source = "module"
  change_to_list = "${data.terraform_remote_state.base.change_to_list}"
}
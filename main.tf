# Declare backend.
provider "aws" {
  region  = "${var.region}"
  profile = "${var.aws_profile}"
}

terraform {
  backend "s3" {
    bucket = "ismail-tio-test"
    key    = "vpc/cloud9/terraform.tfstate"
    region = "eu-west-1"
  }
}

module "cloud9" {
    source = "git@github.com:shaikis/terraform-aws-cloud9.git"
    cloud9_env_name = var.cloud9_environment
    region = var.region
    cloud9_instance_type = var.cloud9_instance_type
    automatic_stop_time_minutes = var.cloud9_automatic_stop_time
}
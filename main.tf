provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}
module "TargetServer"{
  source  = ".//../Modules/TargetServer"
  keyname = "${var.keyname}"
  vpcid  = "${var.vpcid}"
  tar_ami_id  = "${var.tar_ami_id}"
  instance_count="${var.instance_count}"
}

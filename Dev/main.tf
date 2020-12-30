provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}

module "Webserver"{
  source  = ".//../Modules/Webserver"
  keyname = "${var.keyname}"
  vpcid  = "${var.vpcid}"
  ami_id  = "${var.ami_id}"
}
module "Jenkinsserver" {
  source  = ".//../Modules/Jenkinsserver"
  keyname = "${var.keyname}"
  vpcid  = "${var.vpcid}"
  ami_id  = "${var.ami_id}"
}
module "RDS"{
   source  = ".//../Modules/RDS"
}
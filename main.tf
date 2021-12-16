provider "aws" { 
  region     = "ap-south-1"
  access_key = var.access
  secret_key = var.secret
}


variable "env" {
    default = "prod"
}


resource "aws_s3_bucket" "demo-mcd058" {
    count = "${var.env == "prod" ? 1 : 0}"
    bucket = "demo-mcd-058"
}

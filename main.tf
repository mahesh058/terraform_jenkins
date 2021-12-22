provider "aws" { 
  region     = "ap-south-1"
}


/*variable "env" {
    default = "prod"
}*/


resource "aws_s3_bucket" "demo-mcd058" {
    #count = "${var.env == "prod" ? 1 : 0}"
    bucket = "demo-mcd-058"
}

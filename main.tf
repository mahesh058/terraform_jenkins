provider "aws" { 
  region     = "ap-south-1"
}


variable "env" {
}


resource "aws_s3_bucket" "demo-mcd058" {
    count = "${var.env == "true"?1:0}"
    bucket = "demo-mcd-58"
}

resource "aws_instance" "MCDpoc"{
    count = "${var.env == "false" ? 1: 0}"
    ami = "ami-0b9064170e32bde34"
    instance_type = "t2.micro" 
    tags = {
        Name = "MCD"
    }
}

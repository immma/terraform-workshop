provider "aws" {
  region     = "ap-southeast-2"
  access_key = var.access_key
  secret_key = var.secret_key
}

variable "access_key" {
  type        = string
  description = "AWS access key"
}

variable "secret_key" {
  type        = string
  description = "AWS access key"
}

# data "aws_ami" "amazon-linux-2" {
#   most_recent = true
#   owners      = ["amazon"]

#   filter {
#     name   = "name"
#     values = ["amzn2-ami-hvm*"]
#   }

# }

resource "aws_instance" "web" {
  ami           = "ami-059af0b76ba105e7e"
  instance_type = "t3.micro"

  tags = {
    Name = "terraform-workshop"
  }
}

resource "aws_s3_bucket" "bucket" {
  bucket = "ardih-terraform-bucket"
}

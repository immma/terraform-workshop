provider "aws" {
  region = "ap-southeast-2"
}

# data "aws_ami" "amazon-linux-2" {
#   most_recent = true
#   owners      = ["amazon"]

#   filter {
#     name   = "name"
#     values = ["amzn2-ami-hvm*"]
#   }
# }

# resource "aws_instance" "web" {
#   count = 2
#   ami           = data.aws_ami.amazon-linux-2.id
#   instance_type = "t3.micro"

#   tags = {
#     Name = "ardih-terraform-workshop-${count.index}"
#   }
# }

resource "aws_s3_bucket" "bucket" {
  count = 2
  bucket = "ardih-terraform-berubah-${count.index}"
}
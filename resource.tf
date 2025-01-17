resource "aws_instance" "mumbai" {
  ami           = var.ami
  instance_type = var.instance_type
  count         = var.instance_count
}

resource "aws_instance" "syg" {
  ami           = var.ami
  instance_type = var.instance_type
  count         = var.instance_count
  provider      = aws.syg
}

resource "aws_s3_bucket" "mybucket" {
  bucket = "my-tf-test-cket2200000000"

  tags = {
    Name        = "My bucket"
    Environment = "prepord"
  }
}

resource "aws_s3_bucket" "mybucket1" {
  bucket = "my-tf-test-bucet00055000001"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"

}

resource "aws_vpc" "myvpc1" {
  cidr_block = "20.0.0.0/16"

}
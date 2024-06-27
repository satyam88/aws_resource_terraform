resource "aws_instance" "name" {
  ami           = var.ami
  instance_type = var.instance_type
  count         = var.instance_count
}

resource "aws_s3_bucket" "mybucket" {
  bucket = "my-tf-test-bucket2200000000"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "mybucket1" {
  bucket = "my-tf-test-bucket00055000001"

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
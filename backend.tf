terraform {
  backend "s3" {
    bucket         = "docker-repo-satyam"
    key            = "global/s3/terraform.tfstate"
    region         = "ap-south-1"
  }
}
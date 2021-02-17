terraform {
  backend "s3" {
    profile = "jonas-aws"
    bucket  = "terraform-states-jonas"
    region  = "us-east-1"
    encrypt = "true"
    key     = "ec2"
  }
}

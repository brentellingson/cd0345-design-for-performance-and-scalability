terraform {
  backend "s3" {
    bucket  = "udacity-terraform-backend"
    key     = "udacity/project2/example1/terraform.state"
    region  = "us-east-1"
    profile = "udacity"
  }
}

terraform {
  backend "s3" {
    bucket               = "terraform-state-dev-application"
    dynamodb_table       = "terraform-state-dev-application-lock"
    key                  = "dev/us-east-1/landing-zone"
    region               = "us-east-1"
  }
}

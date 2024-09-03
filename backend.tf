#################################################################################
# Terraform backend - store the tf state
#################################################################################

terraform {
  backend "s3" {
    bucket = "sctp-ce7-tfstate"                    # Replace with your S3 bucket name
    key    = "terraform-github-act-ci-wtc.tfstate" # Replace with your tfstate file name
    region = "us-east-1"                           # Replace with your AWS region
  }
}

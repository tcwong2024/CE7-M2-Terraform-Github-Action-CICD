#################################################################################
# Terraform backend - store the tf state
#################################################################################

terraform {
  backend "s3" {
    bucket = var.bucket_name
    key    = var.tfstate_name
    region = var.region_name
  }
}

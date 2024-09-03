#################################################################################
# Terraform provider - Choose Region
#################################################################################

terraform {
  required_version = ">= 1.5.0" # Specify the minimum version required

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region_name
}

resource "aws_kms_key" "sns_key" {
  description = "KMS key for SNS topic encryption"
}

resource "aws_kms_alias" "sns_key_alias" {
  name          = "alias/sns-key"
  target_key_id = aws_kms_key.sns_key.id
}

resource "aws_sns_topic" "user_updates" {
  name              = var.sns_topic_name
  # kms_master_key_id = "alias/aws/sns" # Enable encryption using the default KMS key
  kms_master_key_id = aws_kms_key.sns_key.arn
}
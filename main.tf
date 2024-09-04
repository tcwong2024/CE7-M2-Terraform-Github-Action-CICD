resource "aws_kms_key" "sns_key" {
  description         = "KMS key for SNS topic encryption"
  enable_key_rotation = true # Enable automatic key rotation
}

resource "aws_kms_alias" "sns_key_alias" {
  name          = "alias/sns-key"
  target_key_id = aws_kms_key.sns_key.id
}

resource "aws_sns_topic" "user_updates" {
  #name              = var.sns_topic_name
  name              = "wtc-${var.environment}-sns-topic"
  kms_master_key_id = aws_kms_key.sns_key.arn # Enable encryption using the default KMS key
}
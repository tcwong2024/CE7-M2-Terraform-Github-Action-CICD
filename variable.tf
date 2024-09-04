# variable "bucket_name" {
#   description = "The bucket name to use"
#   type        = string
#   default     = "sctp-ce7-tfstate"
# }

# variable "tfstate_name" {
#   description = "The tfstate name to use"
#   type        = string
#   default     = "terraform-github-act-ci-wtc.tfstate"
# }

variable "region_name" {
  description = "The aws region use"
  type        = string
  default     = "us-east-1"
}

# variable "sns_topic_name" {
#   description = "sns topic"
#   type        = string

#   default = "wtc-sns-topic"
# }

# get the value from environments > dev.tfvars > environment
variable "environment" {
  type        = string
  default     = "env"
  description = "this is a type of sns topic"
}

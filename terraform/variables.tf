variable "aws_access_key" {
  description = "AWS Access Key"
  type        = string
}

variable "aws_default_region" {
  description = "Default AWS Region"
  type        = string
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
  type        = string
  sensitive   = true
}
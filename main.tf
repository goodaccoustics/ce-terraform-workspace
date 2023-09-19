resource "aws_s3_bucket" "example" {
  bucket = "${local.resource_prefix}-${lower(var.s3_bucket_env)}-${local.s3_bucket_name}"

  tags = {
    Name        = "Created by ${local.resource_prefix} - ${var.s3_bucket_env}"
    Environment = var.s3_bucket_env
  }
}
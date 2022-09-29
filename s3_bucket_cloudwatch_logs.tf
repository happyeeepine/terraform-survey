resource "aws_s3_bucket" "cloudwatch_logs" {
  bucket = "hpstudy-cloudwatch-logs-pragmatic-terraform"

  lifecycle_rule {
    enabled = true

    expiration {
      days = "180"
    }
  }
}

resource "aws_s3_bucket" "alb_log" {
  bucket = "hpstudy-alb-log-pragmatic-terraform"

  lifecycle_rule {
    enabled = false

    expiration {
      days = "180"
    }
  }

  force_destroy = true
}

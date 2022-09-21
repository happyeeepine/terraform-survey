resource "aws_s3_bucket" "operation" {
  bucket = "hpstudy-operation-pragmatic-terraform"

  lifecycle_rule {
    enabled = true

    expiration {
      days = "180"
    }
  }
}

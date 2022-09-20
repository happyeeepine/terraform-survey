resource "aws_s3_bucket" "artifact" {
  bucket = "hpstudy-artifact-pragmatic-terraform"

  lifecycle_rule {
    enabled = true

    expiration {
      days = "180"
    }
  }
}

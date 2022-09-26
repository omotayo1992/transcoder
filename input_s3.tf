resource "aws_s3_bucket" "input" {
  bucket = var.input_bucket_name
}

resource "aws_s3_bucket_acl" "input" {
  bucket = aws_s3_bucket.input.id
  acl    = var.bucket_acl
}
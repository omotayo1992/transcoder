resource "aws_s3_bucket" "output" {
  bucket = var.output_bucket_name
}

resource "aws_s3_bucket_acl" "output" {
  bucket = aws_s3_bucket.output.id
  acl    = var.bucket_acl
}
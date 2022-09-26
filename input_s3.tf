resource "aws_s3_bucket" "input" {
  bucket = "input-test-682360"
}

resource "aws_s3_bucket_acl" "input" {
  bucket = aws_s3_bucket.input.id
  acl    = "private"
}
resource "aws_s3_bucket" "output" {
  bucket = "output-test-682360"
}

resource "aws_s3_bucket_acl" "output" {
  bucket = aws_s3_bucket.output.id
  acl    = "private"
}
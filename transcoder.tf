resource "aws_elastictranscoder_pipeline" "bar" {
  input_bucket = aws_s3_bucket.input.bucket
  name         = var.transcoder_name
  role         = "${aws_iam_role.test_role.arn}"

  content_config {
    bucket        = aws_s3_bucket.output.bucket
    storage_class = var.storage_class_content
  }

  thumbnail_config {
    bucket        = aws_s3_bucket.output.bucket
    storage_class = var.storage_class_thumbnails
  }
}
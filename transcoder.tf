resource "aws_elastictranscoder_pipeline" "bar" {
  input_bucket = aws_s3_bucket.input.bucket
  name         = "aws_elastictranscoder_pipeline_tf_test_"
  role         = "${aws_iam_role.test_role.arn}"

  content_config {
    bucket        = aws_s3_bucket.output.bucket
    storage_class = "Standard"
  }

  thumbnail_config {
    bucket        = aws_s3_bucket.output.bucket
    storage_class = "Standard"
  }
}
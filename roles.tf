resource "aws_iam_role" "test_role" {
  name = "elastictranscoder_s3"
  

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "elastictranscoder.amazonaws.com"
        }
      },
    ]
  })


}

resource "aws_iam_policy" "policy" {
  name        = "test-policy"
  description = "A test policy"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "s3:ListBucket",
                "s3:Get*",
                "s3:PutObject",
                "s3:PutObjectAcl",
                "s3:*MultipartUpload*"
            ],
            "Sid": "1",
            "Resource": [
                "*"
            ]
        },
        {
            "Effect": "Allow",
            "Action": [
                "sns:Publish"
            ],
            "Sid": "2",
            "Resource": [
                "*"
            ]
        }
    ]
}
EOF
}

resource "aws_iam_policy_attachment" "test-attach" {
  name       = "transcoder-attachment"
  roles      = [aws_iam_role.test_role.name]
  policy_arn = aws_iam_policy.policy.arn
}
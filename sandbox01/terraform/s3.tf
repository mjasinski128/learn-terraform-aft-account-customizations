data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "sandbox01_bucket" {
  bucket = "aft-sandbox01-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}

resource "aws_s3_bucket" "pimplemaharastra" {
  bucket = "pimple3ridevops"

  tags = {
    Name        = "My bucket"
    Environment = "prod"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.pimplemaharastra.id
  acl    = "private"
}

resource "aws_s3_bucket_object" "object" {
  bucket = "pimple3ridevops"
  key    = "keypair"
  source = "/tmp/s3/devops"
  depends_on = [
    aws_s3_bucket.pimplemaharastra
  ]
}


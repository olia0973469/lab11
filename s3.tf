resource "aws_s3_bucket" "example" {
  bucket = "577125335672-my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
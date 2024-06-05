resource "aws_s3_bucket" "example" {
  bucket = "app-nagios-core-multiaz-23e38401-d626-4ab5-a080-e71bbfc6d2ea"

  tags = {
    Name        = "Store TF state files"
    Environment = "Dev"
  }
}
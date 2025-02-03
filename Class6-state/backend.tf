terraform {
  backend "s3" {
    bucket = "kaizen-gigi"
    key    = "ohio/terrform.tfstate"
    region = "us-east-2"
  }
}

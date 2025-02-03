terraform {
  backend "s3" {
    bucket = "kaizen-gigi"
    key    = "ohio/terrform.tfstate"
    region = "us-east-2"
    dynamodb_table = "lock-state"
  }
}

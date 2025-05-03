terraform {
  backend "s3" {
    bucket = "february-2025-group-2"
    key    = "terraform.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}
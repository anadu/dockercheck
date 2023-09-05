terraform {
  backend "s3" {
    bucket = "docker-terra-backend"
    key    = "terraform.tfstate"
    region = "us-west-2"
  }
}

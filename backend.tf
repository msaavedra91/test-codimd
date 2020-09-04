terraform {
  backend "s3" {
    bucket = "codimd-tfstate"
    key    = "default-infrastructure.tfstate"
    region = "us-east-1"
  }
}

terraform {
  backend "s3" {
    bucket  = "codimd-tfstate"
    encrypt = true
    key     = "default-infrastructure.tfstate"
    region  = "us-east-1"
  }
}

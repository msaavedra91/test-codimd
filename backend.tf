terraform {
  backend "s3" {
    bucket          = "codimd-tfstate"
    dynamodb_table  = "terraform-state-lock-dynamo"
    encrypt         = true
    key             = "default-infrastructure.tfstate"
    region          = "us-east-1"
  }
}

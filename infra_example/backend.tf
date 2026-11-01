# state.tf
terraform {
  backend "s3" {
    bucket       = "cob-remote-tfstate-bucket"
    key          = "cob/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}

# Configure the AWS provider
provider "aws" {
  region = "us-east-1"  # Укажи нужный регион AWS
}

# Configure the Terraform backend (optional)
terraform {
  backend "s3" {
    bucket = "my-terraform-state"  # 
    key    = "terraform/state"     #
    region = "us-east-1"           # 
  }
}

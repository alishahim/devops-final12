# Configure the AWS provider
provider "aws" {
  region = "us-east-1"  # Укажи нужный регион AWS
}

# Configure the Terraform backend (если используешь S3)
terraform {
  backend "s3" {
    bucket = "my-terraform-state"  # Имя твоего S3-бакета
    key    = "terraform/state"     # Путь к файлу состояния
    region = "us-east-1"           # Регион S3-бакета
  }
}

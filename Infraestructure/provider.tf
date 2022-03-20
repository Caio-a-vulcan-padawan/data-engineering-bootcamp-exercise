provider "aws" {
  region = var.aws_region
}

#Centralizar o arquivo de controle de estado do Terraform
terraform {
  backend "s3" {
      bucket = ""
      key = "IGTI EDC/state/terraform.tfstate"
      region = "us-east-1"
  }
}
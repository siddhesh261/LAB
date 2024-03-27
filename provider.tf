terraform {
  
  required_providers {
    aws ={
        source = "hashicorp/aws"
        version = "5.42.0"
    }
  }
  backend "s3" {
    bucket = "tfbucket24"
    key = "dev-terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "tf_remote_backend_info"
  }
}

provider "aws"{
    region ="us-east-1"

}
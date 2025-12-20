terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.10.0"
    }
  }
  backend "s3" {
    bucket = "aws-learning-demo-bucket"
    key    = "suvajit/mytffiles/terraform.tfstate"
    region = "ap-south-1" 
    
    use_lockfile = true


          
  } 
}



# Provider Block
provider "aws" {
  region  = "ap-south-1"
}


resource "aws_instance" "ec2demo" {
  # ami           = "ami-0533f2ba8a1995cf9"
  instance_type = "t2.micro"
}
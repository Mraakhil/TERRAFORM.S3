provider "aws" {
  region     = var.region
}


#Step 3 - Creates S3 backend
terraform {
  backend "s3" {
    #Replace this with your bucket name!
    bucket         = "terraform-coachdevops-stateeeeeeeeeeeeeee"
    key            = "dc/s3/terraform.tfstate"
    region         = "us-east-2"
    #Replace this with your DynamoDB table name!
    dynamodb_table = "tf-up-and-run-locks"
    encrypt        = true
    }
}


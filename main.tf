provider "aws" {
  region     = var.region
}

#1 -this will create a S3 bucket in AWS
resource "aws_s3_bucket" "terraform_state_s3" {
  #make sure you give unique bucket name
  bucket = "terraformmm-coachdevops-stateeeEEEEEEEre" 
  force_destroy = true
# Enable versioning to see full revision history of our state files
  versioning {
         enabled = true
        }

# Enable server-side encryption by default
server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

# 2 - this Creates Dynamo Table

#Step 3 - Creates S3 backend
terraform {
  backend "s3" {
    #Replace this with your bucket name!
    bucket         = "terraformmm-coachdevops-stateeeEEEEEEEre"
    key            = "dc/s3/terraform.tfstate"
    region         = "ap-south-1a
"
   
    }
}


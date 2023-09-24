terraform{
required_providers {
aws={
source = "hashicorp/aws"
version = "4.8.0"
}
}

backend "s3"{
    bucket = "roboshop-dev"
    key = "tfvars"
    region = "us-east-1"
    dynamodb_table = "roboshop-dev"
}

}

provider "aws"{
region = "us-east-1"
}
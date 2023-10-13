terraform{
required_providers {
aws={
source = "hashicorp/aws"
version = "~> 5.0"
}
}

backend "s3"{
    bucket = "roboshop-remote-state-nwtbf"
    key = "shipping"
    region = "us-east-1"
    dynamodb_table = "roboshop-locking"
}

}

provider "aws"{
region = "us-east-1"
}
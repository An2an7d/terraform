terraform{
required_providers {
aws={
source = "hashicorp/aws"
version = "4.8.0"
}
}

backend "s3"{
    bucket = "roboshop-remote-state-nwtbf"
    key = "foreach-demo"
    region = "us-east-1"
    dynamodb_table = "roboshop-locking"
}

}

provider "aws"{
region = "us-east-1"
}
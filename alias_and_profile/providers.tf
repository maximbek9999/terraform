provider "aws" {
    region = "us-east-1"
}

provider "aws" {
    alias = "useast2"
    region = "us-east-2"
    profile = "useast2"
}
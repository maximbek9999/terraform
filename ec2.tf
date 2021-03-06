resource "aws_instance" "terraform_ec2" {
    ami = "ami-047a51fa27710816e"
    instance_type = "t2.micro"
}


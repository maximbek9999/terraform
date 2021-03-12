resource "aws_instance" "terraformec2" {
    ami = var.ami_id
    instance_type = var.types ["us-east-1"]
    count = 2
}
variable "types" {
    type = map
    default = {
        us-east-1 = "t2micro"
        us-east-2 = "t2.medium"
    }
}

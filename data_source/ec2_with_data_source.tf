data "aws_ami" "api_ami" {
  most_recent = true
  owners      = ["amazon"]


  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}
# ami id fetched from datasource described above in data resource
# with filter by name of amzn2-ami-hvm*
resource "aws_instance" "terraform_ec2" {
  ami           = data.aws_ami.api_ami.id
  instance_type = "t2.micro"

}
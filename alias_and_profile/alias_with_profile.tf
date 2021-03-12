resource "aws_eip" "east1" {
    vpc = true
  }

resource "aws_eip" "east2" {
    provider = aws.useast2
    vpc = true
  }
  
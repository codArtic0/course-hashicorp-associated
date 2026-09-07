resource "aws_eip" "myeip" {
  domain = "vpc"

  tags = {
    Name = "eip_terraform"
  }
}
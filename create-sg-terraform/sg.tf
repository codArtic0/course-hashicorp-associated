resource "aws_security_group" "security_group" {
  name        = "Allow HTTP"
  description = "Allow all HTTP inbound traffic"
  vpc_id = var.vpc_id

  tags = {
    Name = "httpdemosg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "ingress" {
  security_group_id = aws_security_group.security_group.id
  ip_protocol       = "tcp"
  from_port         = 80
  to_port           = 80
  cidr_ipv4         = "0.0.0.0/0"

}

resource "aws_vpc_security_group_egress_rule" "egress" {
  security_group_id = aws_security_group.security_group.id
  ip_protocol       = "-1"
  cidr_ipv4         = "0.0.0.0/0"
}
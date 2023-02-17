resource "aws_security_group" "web" {
  name_prefix = "web"
  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "web"
  }
}

resource "aws_security_group" "web2" {
  name_prefix = "web2"
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "web"
  }
}

resource "aws_security_group" "web3" {
  name_prefix = "web3-"
}

resource "aws_security_group_rule" "web3_tcp" {
  type        = "ingress"
  from_port   = 0
  to_port     = 0
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = aws_security_group.web3.id
}





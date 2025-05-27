resource "aws_security_group" "ec2_sg" {
  name        = "${var.name}-sg"
  description = "Allow SSH connection"
  vpc_id = var.vpc_id
  

  tags = {
    Name = "${var.name}-sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "ssh_inbound_rule" {
  description      = "Allow SSH inbound traffic"
  from_port        = 22
  to_port          = 22
  security_group_id = aws_security_group.ec2_sg.id
  cidr_ipv4         = var.your_ip
  
  ip_protocol       = "tcp"
}


resource "aws_vpc_security_group_egress_rule" "ssh_outbound_rule" {
  security_group_id = aws_security_group.ec2_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = 22
}


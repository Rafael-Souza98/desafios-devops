

resource "aws_instance" "ec2_ubuntu" {
    ami           = data.aws_ami.ami_ubuntu.id
    
    associate_public_ip_address = true
    instance_type = var.instance_type
    subnet_id = var.subnet_id
    user_data = file("${path.module}/scripts/user_data.sh")
    security_groups = [aws_security_group.ec2_sg.id]
    iam_instance_profile = aws_iam_instance_profile.ec2_profile.name
    key_name = aws_key_pair.ec2_pem.key_name
    
    
}

resource "aws_key_pair" "ec2_pem" {
  key_name   = "${var.name}_pem"
  public_key = sensitive(tls_private_key.priv_key.public_key_openssh)
}


# RSA key of size 4096 bits
resource "tls_private_key" "priv_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}


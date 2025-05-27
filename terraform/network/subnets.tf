resource "aws_subnet" "public-subnet-1a" {
  vpc_id                  = aws_vpc.this.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 2)
  availability_zone       = "${var.region}a"
  map_public_ip_on_launch = true


  tags = {
    Name = "rafael-subnet-pub"
    Tier = "public"
  }
}
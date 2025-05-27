output "public_subnet_id" {
  value = aws_subnet.public-subnet-1a.id
}

output "vpc_id" {
  value = aws_vpc.this.id
}
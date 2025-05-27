variable "cidr_block" {
  type = string
  description = "List of CIDR blocks for VPC" 
  default = "10.0.0.0/16"
}

variable "region" {
  type = string
  description = "Região onde os recursos serão criados"
}

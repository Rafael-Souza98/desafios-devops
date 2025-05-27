variable "instance_type" {
  type        = string
  description = "Tipo da instancia qu sera criada"
  default     = "t2.micro"
}

variable "subnet_id" {
  type        = string
  description = "Subnet da instancia qu sera criada"
}

variable "vpc_id" {
  type = string
  description = "ID da VPC"
}

variable "name" {
  type        = string
  description = "Nome da EC2"
  default     = "rafal-ec2"
}

variable "your_ip" {
  type        = string
  description = "Seu IP"

  validation {
    condition     = length(var.your_ip) > 0
    error_message = "E necessario informar o seu ip para o security group"
  }
}
variable "region" {
  type        = string
  description = "Regiao onde a instancia sera criada"
  validation {
    condition     = length(var.region) > 0
    error_message = "E necessario informar a região onde os recursos serão criados"
  }
}

variable "your_ip" {
  type        = string
  description = "Seu IP"

  validation {
    condition     = length(var.your_ip) > 0
    error_message = "E necessario informar o seu ip para o security group"
  }
}
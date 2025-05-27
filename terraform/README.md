# 🚀 Infraestrutura com Terraform

Este projeto provisiona recursos de infraestrutura usando o Terraform.  
Você pode adaptá-lo para diferentes provedores como AWS, Azure, GCP, etc.

---

## 📦 Pré-requisitos

- [Terraform CLI](https://www.terraform.io/downloads.html) (recomendado: v1.4+)
- Conta e credenciais configuradas do provedor que você irá usar (ex: AWS)

---

## ⚙️ Configuração

1. **Clone o repositório**:

```bash
git clone git@github.com:Rafael-Souza98/desafios-devops.git
cd desafio-devops/terraform
```

2. Crie um arquivo **terraform.tfvars** e preencha com as variáveis conforme o exemplo do arquivo [terraform.tfvars.example](terraform.tfvars.example), adicionando o IP da sua máquina e a região onde você deseja criar o recurso.

3. Rode o terraform init e depois o terraform apply
```bash
terraform init
terraform apply -auto-approve
```






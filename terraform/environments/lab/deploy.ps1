$ErrorActionPreference = "Stop"

Write-Host "== AWS Hybrid Lab / Terraform ==" -ForegroundColor Cyan

if (-not (Get-Command terraform -ErrorAction SilentlyContinue)) {
    throw "Terraform nao encontrado no PATH."
}

terraform fmt -recursive
terraform init
terraform validate
terraform plan -out=tfplan

Write-Host ""
Write-Host "Plan criado com sucesso. Revise o resultado acima." -ForegroundColor Yellow
Write-Host "Para criar os recursos execute: terraform apply tfplan" -ForegroundColor Green

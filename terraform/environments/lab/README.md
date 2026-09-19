# Terraform Lab Environment

Terraform automation for Sprint 1 — AWS Foundation.

## Current scope

This stage creates the AWS network baseline defined by TASK-09/TASK-10:

- VPC: `10.10.0.0/16`
- Private subnet: `10.10.10.0/24`
- DNS support and DNS hostnames enabled
- Private route table and subnet association

The following resources are intentionally **not** created yet because they belong to later tasks:

- Internet Gateway
- Public subnets
- Security Groups
- Site-to-Site VPN
- Active Directory EC2
- Cisco ISE EC2

## Files

- `versions.tf`
- `providers.tf`
- `variables.tf`
- `main.tf`
- `outputs.tf`
- `terraform.tfvars.example`
- `deploy.ps1`

## Prerequisites

1. Terraform installed.
2. AWS CLI credentials configured for the lab account.
3. Permission to create VPC, subnet and route-table resources.

Do **not** commit AWS access keys, secret keys, passwords, VPN PSKs, private keys, or Terraform state containing sensitive data.

## Validate and plan

PowerShell:

```powershell
cd terraform/environments/lab
Copy-Item terraform.tfvars.example terraform.tfvars
.\deploy.ps1
```

Or manually:

```powershell
terraform fmt -recursive
terraform init
terraform validate
terraform plan
```

## Apply

After reviewing the plan:

```powershell
terraform apply tfplan
```

## Destroy lab resources

When the lab is no longer needed:

```powershell
terraform destroy
```

Always verify that only lab resources are selected before confirming a destroy operation.

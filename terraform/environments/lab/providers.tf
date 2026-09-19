provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "AWS-Hybrid-Network-PNETLab-Lab"
      Environment = "lab"
      ManagedBy   = "Terraform"
      Sprint      = "Sprint-1"
    }
  }
}

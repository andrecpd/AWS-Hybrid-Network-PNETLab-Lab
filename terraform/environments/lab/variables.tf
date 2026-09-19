variable "aws_region" {
  description = "AWS region used by the lab."
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the AWS lab VPC."
  type        = string
  default     = "10.10.0.0/16"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet hosting AD/DNS and Cisco ISE."
  type        = string
  default     = "10.10.10.0/24"
}

variable "availability_zone" {
  description = "Availability Zone for the first private subnet."
  type        = string
  default     = "us-east-1a"
}

variable "project_name" {
  description = "Project name used in AWS resource names and tags."
  type        = string
  default     = "aws-hybrid-pnetlab-lab"
}

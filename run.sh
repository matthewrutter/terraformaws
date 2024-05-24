#!/bin/sh

# Navigate to the Terraform configuration directory
cd terraform

# Initialize Terraform
echo "Initializing Terraform..."
terraform init

# Plan the Terraform changes
echo "Planning Terraform changes..."
terraform plan

# Apply the Terraform changes automatically
echo "Applying Terraform changes..."
terraform apply -auto-approve

# Destroy the Terraform-managed infrastructure automatically
echo "Destroying Terraform-managed infrastructure..."
terraform destroy -auto-approve

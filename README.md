# 3Proxy with Terraform and Ansible

This project automates the provisioning and setup of AWS EC2 instances using Terraform and Ansible to create proxies with 3Proxy. You can then chain those proxies with proxychains4 or others.

## Project Structure

The project is divided into two main directories:

- `terraform/`: Contains Terraform files for provisioning AWS resources.
- `ansible/`: Contains Ansible playbook for setting up the 3proxy server on the provisioned EC2 instances.

### Terraform

The Terraform setup is contained within the `terraform/` directory. The main files are:

- `main.tf`: This is the main Terraform configuration file. It contains the AWS provider configuration and the resource definition for the EC2 instances.
- `variables.tf`: This file contains the declaration for variables used in `main.tf`.

### Ansible

The Ansible setup is contained within the `ansible/` directory:

- `playbook.yml`: This is the main Ansible playbook. It contains tasks for setting up the 3proxy server on the EC2 instances.

## How to Use

1. Set up your AWS credentials with a terraform.tfvars file.
2. Update the variables in `terraform/variables.tf` as per your requirements.
3. Run `terraform init` and `terraform apply` within the `terraform/` directory to provision the resources.
4. After the resources are created, Terraform will output an Ansible inventory file.
5. Use this inventory file to run the Ansible playbook within the `ansible/` directory.

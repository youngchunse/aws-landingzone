# AWS-Landingzone

## Setup

Edit the following items in `app/main.tf`:
1. Set your credentials in the `aws` provider as described in the Terraform documentation (or, setup AWS CLI for your environment using `aws configure` to automatically work out of the box).

To launch the backend, run:
    * `terraform init`
    * `terraform plan`
    * When ready: `terraform apply`
    * And, When finished: `terraform destroy`

## CircleCI Pipeline

1. Set your credentials as Environment Variables on CirleCI IU. Under Project Setting > Environment Variables > Add Variable.

Set values for these 3 variables:
    * `AWS_ACCESS_KEY_ID`
    * `AWS_SECRET_ACCESS_KEY`
    * `REGION`


## Usage

      module "network" {
          source                  = "../network"
          localip                 = var.localip
          vpc_cidr                = var.vpc_cidr
          enable_dns_support      = var.vpc_dns_support
          enable_dns_hostnames    = var.vpc_dns_hostnames
          public_subnet_cidr      = var.public_subnet_cidr
          private_subnet_cidr     = var.private_subnet_cidr
          map_public_ip_on_launch = var.map_public_ip_on_launch
          state                   = var.state
          tags                    = var.tags
          cluster_name            = var.cluster_name
      }

## Bastion Host

      module "bastion" {
          source                      = "../ec2"
          public_key                  = var.public_key
          key_name                    = var.key_name
          instance_count              = var.bastion_instance_defaults["instance_count"]
          ami                         = var.bastion_instance_defaults["ami"]
          instance_type               = var.bastion_instance_defaults["instance_type"]
          user_data                   = var.bastion_instance_defaults["user_data"]
          subnet_id                   = module.network.public_subnets
          monitoring                  = var.bastion_instance_defaults["monitoring"]
          vpc_security_group_ids      = module.network.bastion_security_group_id
          iam_instance_profile        = var.bastion_instance_defaults["iam_instance_profile"]
          associate_public_ip_address = var.bastion_instance_defaults["associate_public_ip_address"]
          ebs_optimized               = var.bastion_instance_defaults["ebs_optimized"]
          tags                        = var.tags
      }

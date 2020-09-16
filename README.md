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

# Instructions

Copy `terraform.tfvars.example` in a `terraform.tfvars` and compile the mandatory variables.

    cp terraform.tfvars.example terraform.tfvars
    vim terraform.tfvars

This configuration will be ignored by the git repository.

## Deploy

Test the configuration with:

    terraform plan

Deploy the instance:

    terraform apply

Remove the instance:

    terraform destroy

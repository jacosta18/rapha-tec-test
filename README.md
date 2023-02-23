# Rapha Tech Test

Welcome to Hello World

## Pre-requsites:
* Clone the repository
* Own AWS account, recommend using AWS free tier
* Terraform installed
* AWS CLI

## Get started

Change directories to /terraform, then:

Initialize terraform:
```
terraform init
```

Validate plan:
```
terraform validate
```

Terraform plan:
```
terraform plan -var-file=aws.tfvars 
```

Terraform apply:
```
terraform apply -var-file=aws.tfvars
```

Terraform destroy:
```
terraform destroy -var-file=aws.tfvars
```
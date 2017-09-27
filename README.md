# vertx-terraform

* Install terraform from https://www.terraform.io/downloads.html
* Create an AWS account at https://portal.aws.amazon.com/billing/signup#/start
* Secure AWS access key and secret
* Follow Instructions on https://github.com/AspireInformationTechnologiesLimited/vertx-packer to create an AMI
* Make note of AMI ID

# Provision EC2 Instance

* pull https://github.com/AspireInformationTechnologiesLimited/vertx-terraform
* cd to vertx-terraform project location ex: /microservices/vertx-terraform
* update terraform.tfvars
* execute below commands
  * terraform init - to initialize a working directory containing Terraform configuration files
  * terraform plan -  to create an execution plan
  * terraform apply - to apply the changes required to reach the desired state of the configuration
  * terraform destroy - to destroy the Terraform-managed infrastructure

More Info on getting started with terraform https://www.terraform.io/intro/index.html

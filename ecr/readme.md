This Terraform configuration automates the creation and management of an Amazon Elastic Container Registry (ECR) to store Docker images. 
It provisions the necessary resources in AWS to set up the ECR repository.


parameters:
1. Repository Name(Required): The name of the ECR repository you want to create. This should be a unique name within your AWS account and region.
2. Tags(Optional): you can specify tags for the ECR repository to help categorize and organize your resources.

Terraform Configuration:
1. Review Configuration: Review the main.tf file to ensure it matches your requirements. You can adjust variables such as region, accesskey, password etc.
2. Initialize Terraform: Navigate to the directory containing the Terraform configuration files and initialize Terraform(terraform init).
3. Create Plan: Generate a Terraform execution plan to preview the changes Terraform will make to your infrastructure(terraform plan).
4. Apply Plan: If the plan looks good, apply it to provision or update your ECR resources(terraform apply).
5. Confirm Changes: Confirm the changes when prompted by Terraform. Once confirmed, Terraform will apply the plan and make the necessary changes to your infrastructure.

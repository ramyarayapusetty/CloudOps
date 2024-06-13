AWS Key Management Service (KMS) is a managed service that allows you to create and control the encryption keys used to encrypt your data. It provides a highly available and secure way to manage cryptographic keys and control their usage across a wide range of AWS services and applications.

Parameters:
1. name(Required): Specifies the name of the KMS alias. 
2. target_key_id(Required): Specifies the key ID of the KMS key to which the alias points.

Terraform Configuration:

1. Review Configuration: Review the main.tf file to ensure it matches your requirements. You can adjust variables such as region, accesskey, password etc. 
2. Initialize Terraform: Navigate to the directory containing the Terraform configuration files and initialize Terraform(terraform init). 
3. Create Plan: Generate a Terraform execution plan to preview the changes Terraform will make to your infrastructure(terraform plan). 
4. Apply Plan: If the plan looks good, apply it to provision or update your ECR resources(terraform apply).
5. Confirm Changes: Confirm the changes when prompted by Terraform. Once confirmed, Terraform will apply the plan and make the necessary changes to your infrastructure.

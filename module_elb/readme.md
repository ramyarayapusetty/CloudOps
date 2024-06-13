The Network Load Balancer (NLB) is a highly scalable and performant layer 4 (TCP/UDP) load balancer provided by Amazon Web Services (AWS). It helps distribute incoming traffic across multiple targets, such as Amazon EC2 instances, containers, IP addresses, or Lambda functions, within one or more Availability Zones.

Parameters:
1. Name: A unique name for your NLB.
2. Subnets: Specifies the subnets in which the NLB will be deployed. These should be private subnets if the NLB is internal or public subnets if it is internet-facing.
3. Load Balancer Type: Specifies whether the NLB is internal or internet-facing.
4. Listener Configuration: Defines the listener configuration, including the protocol and port for accepting incoming traffic. You need to specify at least one listener.
5. Target Group Configuration: Defines the target group(s) associated with the NLB, including the protocol and port for routing traffic to the targets.
6. Health Check Configuration: Specifies the health check settings for the targets in the target group(s), including the protocol, port, interval, timeout, and threshold.
7. Security Groups: Specifies the security groups associated with the NLB to control inbound and outbound traffic.

Terraform Configuration:

1. Review Configuration: Review the main.tf file to ensure it matches your requirements. You can adjust variables such as region, accesskey, password etc.
2. Initialize Terraform: Navigate to the directory containing the Terraform configuration files and initialize Terraform(terraform init).
3. Create Plan: Generate a Terraform execution plan to preview the changes Terraform will make to your infrastructure(terraform plan).
4. Apply Plan: If the plan looks good, apply it to provision or update your ECR resources(terraform apply).
5. Confirm Changes: Confirm the changes when prompted by Terraform. Once confirmed, Terraform will apply the plan and make the necessary changes to your infrastructure.

# Automated Infrastructure Deployment with Terraform

🌟 **Overview**  
This project automates the provisioning of AWS cloud resources using Terraform, enabling scalable, efficient, and consistent infrastructure deployment. The reusable Terraform modules included in this repository can deploy core AWS services like EC2, S3, and RDS with minimal configuration.

---

## 🔑 Features

- 🚀 **Automated deployment of AWS resources:**
  - EC2 instances for application hosting.
  - S3 buckets for object storage or backups.
  - RDS databases for managing relational data.
- 🎯 **Reusable and modular Terraform code.**
- ✔️ **Validation of infrastructure configurations before deployment.**
- 🛡️ **Enhanced consistency and reduced manual errors through Infrastructure as Code (IaC).**
- 🔧 **Configurable parameters for flexibility** (e.g., instance type, storage size).

---

## 🏗️ Architecture

### Terraform CLI:
- Manages the lifecycle of AWS resources.
- Executes `terraform plan` and `terraform apply` commands.

### AWS Services:
- **EC2:** Virtual machines for application hosting.
- **S3:** Object storage for data, logs, and backups.
- **RDS:** Relational database for structured data storage.

---

## 📁 Project Structure
```plaintext

├── main.tf            # Entry point for Terraform configuration
├── variables.tf       # Input variables for customization
├── outputs.tf         # Outputs for infrastructure details
├── modules/
│   ├── ec2/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   ├── s3/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   └── rds/
│       ├── main.tf
│       ├── variables.tf
│       ├── outputs.tf

```
---

## ⚙️ Prerequisites

1. **Terraform CLI** installed on your local system.  
   👉 [Install Terraform](https://www.terraform.io/downloads.html)

2. **AWS CLI** installed and configured with appropriate credentials.  
   👉 [Install AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)

3. **An active AWS account** with programmatic access.

---

## 🚀 Usage

### Step 1: Clone the Repository
Clone this repository to your local machine:

git clone https://github.com/soulAnnihilator/Automated-Infrastructure-Deployment.git


### Step 2: Configure Variables
Edit the `variables.tf` file in the root directory to customize infrastructure settings:

variable "aws_region" { default = "us-east-1" }

variable "instance_type" { default = "t2.micro" }

variable "bucket_name" { description = "Name for the S3 bucket" }


### Step 3: Initialize Terraform
Initialize Terraform to download required provider plugins:

***terraform init***


### Step 4: Validate and Plan Infrastructure
Validate your Terraform configurations:

***terraform validate***


Generate an execution plan to preview changes:

***terraform plan***


### Step 5: Apply the Configuration
Apply the Terraform plan to deploy the resources:

***terraform apply***

Type `yes` when prompted to confirm.

### Step 6: View Outputs
After successful deployment, Terraform will display key resource outputs (e.g., EC2 public IP, S3 bucket name):


---

## 📦 Modules

1. **EC2 Module**  
   Deploys an EC2 instance with customizable instance type, AMI, and security groups.

2. **S3 Module**  
   Creates an S3 bucket with customizable bucket names and access policies.

3. **RDS Module**  
   Provisions an RDS database instance with configurable parameters like storage, engine type, and instance size.

---

## 🧹 Cleanup

To delete the resources and avoid unnecessary costs, use:

***terraform destroy***


Type `yes` when prompted to confirm.

---

## ✅ Best Practices

- Use **Terraform Workspaces** for managing multiple environments (e.g., dev, staging, prod).
- Store sensitive variables like database passwords in a secure Terraform variables file or use **AWS Secrets Manager**.
- Enable **state file locking** if collaborating with a team by using Terraform remote backends (e.g., S3 with DynamoDB).

---

## 🤝 Contributing

Feel free to submit issues or pull requests to improve this project. Contributions are always welcome!

---

## 📝 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.


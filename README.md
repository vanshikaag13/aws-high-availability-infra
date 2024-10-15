# Deploying High-Availability One-Tier AWS Architecture with Terraform and Jenkins

This project automates the deployment of a high-availability one-tier AWS architecture using **Terraform** and **Jenkins**. It leverages Infrastructure as Code (IaC) to manage AWS resources efficiently and integrates a CI/CD pipeline for seamless deployments.

## Architecture Overview

- **VPC**: A dedicated Virtual Private Cloud for network isolation.
- **Auto Scaling Group (ASG)**: Automatically scales the number of EC2 instances based on demand.
- **Application Load Balancer (ALB)**: Distributes incoming application traffic across multiple targets, ensuring high availability.

## Features

- Fully automated infrastructure deployment using Terraform.
- CI/CD pipeline managed by Jenkins for continuous integration and deployment.
- Easy-to-use configuration files to set up the entire architecture.

## Prerequisites

- **AWS Account**: You need an AWS account to deploy resources.
- **Terraform**: Installed on your local machine.
- **Jenkins**: Installed and configured with required plugins (Git, Terraform, AWS Credentials).

## Getting Started

### Clone the Repository

```bash
git clone https://github.com/<your-username>/aws-ha-one-tier-terraform-jenkins.git
cd aws-ha-one-tier-terraform-jenkins
```

### Set Up Terraform Configuration

1. Navigate to the Terraform configuration files and review the code.
2. Update any necessary variables in `variables.tf`.

### Push to GitHub

Ensure your changes are committed to your GitHub repository:

```bash
git add .
git commit -m "Initial commit"
git push origin main
```

### Jenkins Configuration

1. Create a new pipeline job in Jenkins.
2. Link the job to your GitHub repository.
3. Add AWS credentials in Jenkins' credential store.
4. Use the provided `Jenkinsfile` to configure the pipeline.

### Deploy the Infrastructure

1. Trigger the Jenkins pipeline job.
2. Monitor the output for successful deployment.

## Verify Deployment

After deployment, access the Application Load Balancer's DNS name in your browser to view the running application:

```
http://<alb-dns-name>
```

You should see the "Hello, World!" message served by the EC2 instances.

## Contributing

Contributions are welcome! Please feel free to submit a pull request or open an issue.

## License

This project is licensed under the MIT License.

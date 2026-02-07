# Approach

## Infrastructure Provisioning
Terraform was used to provision all AWS infrastructure to ensure consistency, repeatability, and automation. The infrastructure includes a custom VPC, public subnet, internet gateway, route table, and security group.

An EC2 instance was created inside the public subnet to allow internet access for the application.

## Compute and Configuration
The EC2 instance is provisioned with Docker installed using Terraform user_data. This ensures that Docker is available immediately after instance creation without manual intervention.

## Application Deployment
The Node.js application was containerized using Docker. The Docker image was built directly on the EC2 instance and run with port 3000 exposed to allow public access.

## CI/CD
A GitHub Actions pipeline was implemented to automate Docker image builds on every push to the main branch. This ensures that the Dockerfile and application code remain valid and buildable.

## Reasoning Behind the Approach
- Terraform ensures infrastructure is reproducible and version controlled
- Docker simplifies application deployment and portability
- EC2 provides full control over infrastructure for this assignment
- GitHub Actions provides an easy and effective CI solution without external dependencies

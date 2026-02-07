# DevOps Intern Assignment – 8byte

## Overview
This project demonstrates a complete DevOps workflow where a simple Node.js application is containerized using Docker and deployed on AWS EC2 infrastructure provisioned using Terraform. A CI pipeline using GitHub Actions is implemented to automate Docker image builds.

The application is publicly accessible via the EC2 public IP.

## Tech Stack
- AWS EC2
- Terraform
- Docker
- Node.js
- GitHub Actions

## Architecture
- Custom VPC with a public subnet
- Internet Gateway and route table for internet access
- Security Group allowing SSH (22) and application port (3000)
- EC2 instance provisioned using Terraform
- Docker installed using Terraform user_data
- Node.js application running inside a Docker container
- CI pipeline using GitHub Actions to validate Docker builds

## Live Application
http://3.111.32.167:3000

## Repository Structure
├── app/
│ └── app.js
├── terraform/
│ ├── main.tf
│ ├── provider.tf
│ ├── outputs.tf
│ └── variables.tf
├── .github/
│ └── workflows/
│ └── ci.yml
├── Dockerfile
├── README.md
├── APPROACH.md
└── CHALLENGES.md


## How to Run Locally
docker build -t 8byte-intern-app .
docker run -p 3000:3000 8byte-intern-app

## Deployment Summary

Infrastructure is provisioned using Terraform

Docker is installed automatically using user_data

Application is containerized and deployed on EC2

CI pipeline validates Docker builds on every push to main
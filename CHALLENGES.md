# Challenges Faced

## SSH Access on Windows
Connecting to the EC2 instance from Windows caused issues due to PowerShell handling of SSH commands and PEM files. The issue was resolved by explicitly invoking the OpenSSH binary and fixing key file permissions.

## Docker Port Exposure
Ensuring the application was accessible publicly required proper security group configuration and correct Docker port mapping. This was verified by testing both container logs and browser access.

## Terraform Debugging
Applying Terraform incrementally helped isolate issues related to networking and compute resources. Validating user_data execution by checking Docker installation confirmed successful instance initialization.

## CI/CD Validation
Ensuring the CI pipeline matched the assignment requirements required focusing only on Docker build automation instead of overengineering deployment steps.

## Learnings
This project reinforced the importance of debugging, understanding cloud networking basics, and building reliable infrastructure using automation tools.

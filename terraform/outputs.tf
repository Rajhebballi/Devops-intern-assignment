output "ec2_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.app_server.public_ip
}

output "application_url" {
  description = "Public URL of the application"
  value       = "http://${aws_instance.app_server.public_ip}:3000"
}

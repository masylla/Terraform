output "public_dns" {
  description = "DNS name of the EC2 instance"
  value       = aws_instance.Sandbox.public_dns
}

output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.Sandbox.public_ip
}

output "private_ip" {
  description = "Private IP address of the EC2 instance"
  value       = aws_instance.Sandbox.private_ip
}

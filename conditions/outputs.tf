output "private_ip" {
  value       = aws_instance.terraform.private_ip
  description = "The public IP address of the main server instance." # output file to fetch information from the resource
}

output "security_group_id" {
  description = "ID of the created Security Group"
  value       = aws_security_group.web_sg.id
}

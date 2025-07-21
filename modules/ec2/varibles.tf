variable "ami_id" {
  description = "AMI ID to use for the EC2 instance"
  type        = string
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "instace_name" {
  type = string
  default = "temp_name"
}

variable "security_group_ids" {
  description = "List of Security Group IDs"
  type        = list(string)
}

variable "ec2_key" {
  type = string
}
variable "root_block_device" {
  description = "Root block device configuration"
  type = object({
    volume_size = number
    volume_type = string
  })
  default = {
    volume_size = 8
    volume_type = "gp3"
  }
}

output "instance_id" {
  value = aws_instance.ec2_instance.id
}

output "public_ip" {
  value = aws_instance.ec2_instance.public_ip
}
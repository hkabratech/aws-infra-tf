variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "instace_name" {
  type = string
  default = "temp_name"
}

variable "ec2_key" {
  type = string
}

variable "cidr_blocks" {
  description = "Allowed CIDR blocks for ingress traffic"
  type        = list(string)
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


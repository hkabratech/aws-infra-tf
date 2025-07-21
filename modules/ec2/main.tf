resource "aws_instance" "ec2_instance" {
  ami = var.ami_id
  instance_type = var.instance_type
  key_name = var.ec2_key
  vpc_security_group_ids = var.security_group_ids
  
  tags = {
    Name = var.instace_name
  }
}

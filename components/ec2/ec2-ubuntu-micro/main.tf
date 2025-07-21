
module "latest_ubuntu_ami" {
  source = "../../../modules/data"
}

module "web-sg" {
 source = "../../../modules/sg/web-server-sg"
 cidr_blocks = var.cidr_blocks
}

module "ec2_instance" {
  source = "../../../modules/ec2"
  ami_id = module.latest_ubuntu_ami.ami_id
  instance_type = var.instance_type
  instace_name = var.instace_name
  ec2_key = var.ec2_key  
  security_group_ids = [module.web-sg.security_group_id]    
  root_block_device = {
    volume_size = var.root_block_device.volume_size
    volume_type = var.root_block_device.volume_type
  }
  
 }


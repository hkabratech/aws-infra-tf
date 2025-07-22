instance_type = "t2.micro"
instace_name = "ec2-ubuntu-main"
ec2_key  = "hk-aws1-admin"
cidr_blocks = ["173.238.82.170/32"]
root_block_device = {
  volume_size = 8
  volume_type = "gp3"
}

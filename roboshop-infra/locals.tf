locals {
   vpc_id = module.this.vpc_id
   public_subnet_ids = module.this.public_subnet_ids
   private_subnet_ids = module.this.private_subnet_ids
   database_subnet_ids = module.this.database_subnet_ids
   allow_all_security_group_id = module.allow_all_sg.security_group_id
   ips = module.ec2_instance
}



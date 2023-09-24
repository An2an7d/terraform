module "allow_all_sg" {
  source = "../terraform-aws-securitygroup"
  sg_name = "allow-all-from-module"
  project_name = var.project_name
  sg_description = "allowing all ports from internet"
  sg_ingress_rules = var.sg_ingress_rules
  vpc_id = local.vpc_id
  common_tags = var.common_tags
}
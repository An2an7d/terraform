module "this"{
    source = "../terraform-aws-vpc-module"
    project_name = var.project_name
    cidr_block = var.cidr_block
    common_tags = var.common_tags
    vpc_tags = var.vpc_tags
    igw_tags = var.igw_tags

    #public subnet
    public_subnet_cidr = var.public_subnet_cidr

    #private subnet
    private_subnet_cidr = var.private_subnet_cidr

    #database subnet
    database_subnet_cidr = var.database_subnet_cidr

    #route table
    public_route_table_tags = var.public_route_table_tags
    private_route_table_tags = var.private_route_table_tags
    database_route_table_tags = var.database_route_table_tags
}
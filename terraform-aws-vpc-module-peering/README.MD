### VPC

This module is going to create 
* 1 vpc
* 1 Internet Gateway
* 2 public subnets
* 2 private subnets
* 2 database subnets
* 1 Elastic IP
* 1 Nat Gateway 
* 3 route tables for public, private and database subnets
* 3 route table associations (6 resources)
* 1 db subnet group
* Total - 20 resources will be created

### inputs

* project_name(Required) - user has to provide project name
* cidr_block(Required) - user has to provide cidr block
* enable_dns_hostnames(Optional) - user can provide enable_dns_hostnames, ***default is true***
* enable_dns_support(Optional) - user can provide enable_dns_support, ***default is true***
* common_tags(Optional) - user can provide common tags for all resources, default is empty
* vpc_tags(Optional) - user can provide vpc tags for all resources, default is empty
* azs - availability zones will be passed from module, set to first two zones available in the region given by user in the provider.
* igw_tags(Optional) - user can provide internet gateway tags for internet gateway resources, default is empty
* public_subnet_cidr(Required) - user has to provide a list of 2 public subnet cider
* private_subnet_cidr(Required) - user has to provide a list of 2 private subnet cider
* database_subnet_cidr(Required) - user has to provide a list of 2 database subnet cider
* nat_gateway_tags(Optional) - user can provide nat gateway tags for nat gateway resources, default is empty
* public_route_table_tags(Optional) - user can provide public route table tags, default is empty
* private_route_table_tags(Optional) - user can provide private route table tags, default is empty
* database_route_table_tags(Optional) - user can provide database route table tags, default is empty
* db_subnet_group_tags(Optional) - user can provide db subnet tags, default is empty
# locals is also type of variable but it evaluates functions and expression on run time
locals {
    ami_id = "ami-03265a0778a880afb"
    key_public = file("${path.module}/devops.pub")
    instance_type = var.isPROD ? "t3.medium" : "t2.medium"
}

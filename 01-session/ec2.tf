resource "aws_instance" "myec2"{
    ami = var.ami-id
    instance_type = var.instance_type
    security_groups = [aws_security_group.terraform-allow-all.name]

    tags = var.tags
}


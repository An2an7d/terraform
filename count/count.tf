resource "aws_instance" "count"{
    count = 10
    ami = var.ami_id
    instance_type = var.instance_name[count.index] == "MongoDB" || var.instance_name[count.index] == "MySQL" ? "t3.medium" : "t2.micro"
    tags = {
        Name = var.instance_name[count.index]
    }
}

resource "aws_route53_record" "record" {
  count = 10
  zone_id = var.zone_id
  name    = "${var.instance_name[count.index]}.${var.domain}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.count[count.index].private_ip]
}

resource "aws_key_pair" "deployer" {
  key_name   = "devops-pub"
  public_key = file("${path.module}/devops.pub")
}

resource "aws_instance" "file-function"{
    ami = var.ami_id
    instance_type = "t2.micro"
    key_name = aws_key_pair.deployer.key_name
}
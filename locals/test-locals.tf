resource "aws_key_pair" "deployer" {
  key_name   = "devops-pub"
  public_key = local.key_public
}

resource "aws_instance" "file-function"{
    ami = local.ami_id
    instance_type = local.instance_type
    key_name = aws_key_pair.deployer.key_name
}
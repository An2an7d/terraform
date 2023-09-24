variable "ami_id"{
    type = string
    default = "ami-03265a0778a880afb"
}

variable "instances"{
    type = map
    default = {
        MongoDB = "t3.medium"
        MySQL = "t3.medium"
        Catalogue = "t2.micro"
        Cart = "t2.micro"
        User = "t2.micro"
        Redis = "t2.micro"
        RabbitMQ = "t2.micro"
        Shipping = "t2.micro"
        Payment = "t2.micro"
        Web = "t2.micro"
    }
}

variable "zone_id"{
    default = "Z08398852A7V0K0ETO6SB"
}

variable "domain"{
    default = "nowheretobefound.online"
}

variable "sg_name"{
    default = "terraform-allow-all"
}

variable "sg_cidr" {
  default = ["0.0.0.0/0"]
}

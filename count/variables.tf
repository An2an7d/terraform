variable "ami_id"{
    type = string
    default = "ami-03265a0778a880afb"
}

variable "instance_name"{
    type = list
    default = ["MongoDB","Catalogue","Redis","Cart","User","MySQL","Shipping","RabbitMQ","Payment","Web"]
}

variable "zone_id"{
    default = "Z08398852A7V0K0ETO6SB"
}

variable "domain"{
    default = "nowheretobefound.online"
}
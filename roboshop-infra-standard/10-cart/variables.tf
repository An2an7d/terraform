variable "project_name" {
  default = "roboshop"
}

variable "env" {
  default = "dev"
}

variable "common_tags" {
    default = {
      Project = "Roboshop"
      Component ="cart"
      Environment = "DEV"
      terraform = "true"
    }
}

variable "target_group_port" {
  default = 8080
}

variable "launch_template_tags" {
  default = [
    {
    resource_type = "instance"

    tags = {
      Name = "cart"
    }
    },
    {
    resource_type = "volume"

    tags = {
      Name = "cart"
    }
  }
  ]
}

variable "autoscaling_tags" {
  default = [
    {
    key                 = "Name"
    value               = "cart"
    propagate_at_launch = true
    }
  ]
}
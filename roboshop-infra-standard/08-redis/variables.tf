variable "project_name" {
  default = "roboshop"
}

variable "env" {
  default = "dev"
}

variable "common_tags" {
    default = {
      Project = "Roboshop"
      Component ="Redis"
      Environment = "DEV"
      terraform = "true"
    }
}

variable "zone_name" {
  default = "nowheretobefound.online"
}
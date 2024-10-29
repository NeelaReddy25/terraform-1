variable "instance_names" {
  type = map
  default = {
    db = "t3.small"
    backend ="t3.micro"
    frontend = "t3.micro"
  }
}

variable "common_tags" {
  type = map
  default = {
    Project = "expense"
    Terraform = "true"
  }
}

variable "domain_name" {
  default = "neelareddy.store"
}

variable "zone_id" {
  default = "Z03951783QAH4RNZ7CEK8"
}
variable "instances" {
  type = map(any)
  default = {
    mysql    = "t3.small"
    backend  = "t3.micro"
    frontend = "t3.micro"
  }
}

variable "domain_name" {
  default = "prasadking.xyz"
}

variable "zone_id" {
  default = "Z01844013P3FFC9B6FQWK"
}


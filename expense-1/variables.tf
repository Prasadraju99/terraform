variable "instance_names" {
  type    = list(string)
  default = ["mysql", "backend", "frontend"]
}

variable "domain_name" {
  default = "prasadking.xyz"
}

variable "zone_id" {
  default = "Z01844013P3FFC9B6FQWK"
}
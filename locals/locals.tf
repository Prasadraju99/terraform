locals {
  domain_name   = "prasadking.xyz"
  zone_id       = "Z01844013P3FFC9B6FQWK"
  instance_type = var.environment == "prod" ? "t3.small" : "t3.micro"
}
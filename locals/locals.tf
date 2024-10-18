#A local value assigns a name to an expression, so you can use the name multiple times within a module instead of repeating the expression.
locals {
  domain_name   = "prasadking.xyz"
  zone_id       = "Z01844013P3FFC9B6FQWK"
  instance_type = var.environment == "prod" ? "t3.small" : "t3.micro"
}
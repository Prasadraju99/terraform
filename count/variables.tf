variable "environment" {
  default = "dev"
}

variable "instance_names" {
  type    = list(string)
  default = ["mysql", "backend", "fronten"]
}

variable "common_tags" {
  type = map(any) # optional
  default = {
    project   = "Expense"
    Env       = "Dev"
    terraform = "True"
  }
}

variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "this is the ami_id of devops-practice which is RHEL-9"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "sg_name" {
  default = allow_ssh_all
}

variable "description" {
  default = "allow port no 22 for ssh access"
}

variable "from_port" {
  type    = number
  default = 22
}

variable "to_port" {
  type    = number
  default = 22
}

variable "protocol" {
  type    = string
  default = "tcp"
}

variable "ingress_cidr" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "tags" {
  type = map(any) # optional
  default = {
    Name      = "Server-1"
    project   = "Expense"
    component = "Test-server"
    Env       = "Dev"
    terraform = "True"
  }
}

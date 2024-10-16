resource "aws_instance" "expense" {
  count                  = length(var.instance_names)    # count index for multiple servers
  ami                    = "ami-09c813fb71547fc4f"
  instance_type          = var.environment == "prod" ? "t3.small" : "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = merge(         # create common tags for all the resource and Instance name as required
    var.common_tags,        
    {
      Name = var.instance_names[count.index] # count index to create multiple server
    }
  )

}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh1"
  description = "allow port number 22 for ssh access"

  # usually we allow everything in egress # egress block
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"] # allow from everyone
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = merge(
    var.common_tags,
    {
      Name = "Allow_ssh"
    }
  )
}

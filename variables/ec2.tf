resource "aws_instance" "hello_world" {
  ami           = var.ami_id  # Replace with a valid AMI ID for your region
  instance_type = var.ec2_type   # Change as needed
  subnet_id = var.subnet_id

   vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "HelloWorldInstance"
  }

}



resource "aws_security_group" "allow_ssh" {
  name        = var.sg_name
  description =  var.sg_description
 
  egress {
    
      from_port   = var.from_port
      to_port     = var.to_port
      protocol    = "-1" # Allow all outbound traffic
      cidr_blocks = var.cidr_blocks
      description = "Allow all outbound traffic"
    }
  

  ingress {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
    description = "Allow SSH from anywhere"

    
  }

 
}

    
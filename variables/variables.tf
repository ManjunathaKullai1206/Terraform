variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
  default     = "ami-02457590d33d576c3" # Replace with a valid AMI ID for your region
  
}

variable "ec2_type" {
  description = "The type of EC2 instance to create"
  type        = string
  default     = "t2.micro" # Change as needed
  
}

variable "ec2_tags" {
  description = "Tags to apply to the EC2 instance"
  type        = map(string)
  default     = {
    Name = "HelloWorldInstance"
  }
  
}


variable "subnet_id" {
  description = "The ID of the subnet in which to launch the EC2 instance"
  type        = string
  default     = "subnet-079f92e1ba5e6c7cf" # Replace with your actual subnet ID
  
}

variable "sg_name" {
    description = "The name of the security group"
    type        = string
    default     = "allow_all" # Default security group name
  
}

variable "sg_description" {
  description = "The description of the security group"
  type        = string
  default     = "Allow all inbound traffic" # Default description
  
}

variable "from_port" {
  description = "The starting port for the security group rule"
  type        = number
  default     = 0 # Default to SSH port
  
}

variable "to_port" {
  description = "The ending port for the security group rule"
  type        = number
  default     = 0 # Default to SSH port
  
}

variable "cidr_blocks" {
  description = "The CIDR blocks to allow in the security group rule"
  type        = list(string)
  default     = ["0.0.0.0/0"] # Allow all IPs for SSH access
  
}

variable "sg_tags" {
  description = "Tags to apply to the security group"
  type        = map(string)
  default     = {
    Name = "allow_all"
  }
  
}

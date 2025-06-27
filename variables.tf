variable "cidr_blocks" {
  description = "The CIDR blocks to allow in the security group rule"
  default     = "10.0.0.0/16"
}

variable "project" {

    type = string
  
}

variable "environment" {

    type = string
    #default = "default" # Default environment
  
}
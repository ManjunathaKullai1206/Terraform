#roboshop-dev
resource "aws_vpc" "main" {
  cidr_block       = var.cidr_blocks
  instance_tenancy = "default"
  enable_dns_hostnames = "true"
  

  tags = merge(
    local.common_tags, 
    {
      Name = "${var.project}-vpc-${var.environment}"
      
    }
  )
  
}

provider "aws" {
  
}
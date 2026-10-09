variable "aws_region" {
  type        = string
  description = "AWS region"
  default     = "eu-central-1"
}

variable "environment" {
  type        = string
  description = "Deployment environment"
  default     = "dev"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
  default     = "10.70.0.0/16"
}

variable "subnets" {
  type = map(object({
    cidr   = string
    az     = string
    public = bool
  }))

  default = {
    public_a = {
      cidr   = "10.70.1.0/24"
      az     = "eu-central-1a"
      public = true
    }

    public_b = {
      cidr   = "10.70.2.0/24"
      az     = "eu-central-1b"
      public = true
    }

    private_a = {
      cidr   = "10.70.11.0/24"
      az     = "eu-central-1a"
      public = false
    }

    private_b = {
      cidr   = "10.70.12.0/24"
      az     = "eu-central-1b"
      public = false
    }
  }
}
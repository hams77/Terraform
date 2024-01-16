variable "instance_type" {
  description = "The type of instance to start"
  type        = string
  default     = "t3.micro"
  encrypted=true
}

variable "ami" {
  description = "ID of AMI to use for the instance"
  type        = string
  default     = null
}

variable "subnet_id" {
  description = "The VPC Subnet ID to launch in"
  type        = string
  default     = null
}

variable "sg_id" {
    description = "sg for creating ec2 instance"
    type = string
}

variable "key_name" {
  description = "Key name of the Key Pair to use for the instance; which can be managed using the `aws_key_pair` resource"
  type        = string
  default     = null
}

variable "tags" {
  type    = map(string)
  default = {
    Name        = "TF-Instance"
    Environment = "Dev"
  }
}

variable "monitoring" {
  description = "If true, the launched EC2 instance will have detailed monitoring enabled"
  type        = bool
  default     = null
}

variable "metadata_options" {
  description = "Customize the metadata options of the instance"
  type        = map(string)
  default = {
    "http_endpoint"               = "enabled"
    "http_tokens"                 = "required"
   
  }
}

variable "ebs_optimized" {
  description = "If true, the launched EC2 instance will be EBS-optimized"
  type        = bool
  default     = null
}

variable "associate_public_ip_address" {
  description = "Whether to associate a public IP address with an instance in a VPC"
  type        = bool
  default     = null
}
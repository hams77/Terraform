variable "instance_type" {

    description = "instance type to create  ec2 instance"
    default = "t2.micro"
    
}

variable "ami" {
    description = "ami id for creating ec2 instance"

  
}

variable "subnet_id" {
    description = "subnet id for creating ec2 instance"
  
}

variable "sg_id" {
    description = "sg for creating ec2 instance"
    type = string


  
}

variable "key_name" {
    description = "key for creating ec2 instance"
}

variable "tags" {
    description = "tags for ec2 instance"
  
}
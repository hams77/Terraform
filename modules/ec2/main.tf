resource "aws_instance" "main" {
    instance_type = var.instance_type
    ami = var.ami
    subnet_id = var.subnet_id
    associate_public_ip_address = true
    vpc_security_group_ids = [var.sg_id]
    key_name = var.key_name

    







  tags = merge(
    var.tags,

  {
    Name = "jenkinsagent"
    Name = "jenkinsmaster"
    Name = "ec2appserver"
  
  },
  )


}  



  
  
 
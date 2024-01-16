resource "aws_instance" "main" {
    instance_type = var.instance_type
	root_block_device {
	encrypted =true
	}
    ami = var.ami
    subnet_id = var.subnet_id
    
    vpc_security_group_ids = [var.sg_id]
    key_name = var.key_name

monitoring           =   var.monitoring
  ebs_optimized = var.ebs_optimized
  associate_public_ip_address = var.associate_public_ip_address
  metadata_options = var.metadata_options
  tags = merge(
    var.tags,
 {
Name = "jenkinsagent"
Name = "jenkinsmaster"
Name = "ec2appserver"
 },
  )

}

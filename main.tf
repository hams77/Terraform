module "jenkinsagent" {
  source = "./modules/ec2"
  ami = "ami-0a0f1259dd1c90938"
  subnet_id = "subnet-07056ba67edeec87c"
  sg_id =  "sg-0f37dab191780c9f1"
  key_name = "pennam"

  tags = {
    Name = "jenkinsagent"
  }


}

module "jenkinmaster" {
  source = "./modules/ec2"
  ami = "ami-0a0f1259dd1c90938"
  subnet_id = "subnet-07056ba67edeec87c"
  sg_id =  "sg-0f37dab191780c9f1"
  key_name = "pennam"
  
  tags = {
    Name = "jenkinsmaster"
  }
  
}


module "ec2appserver" {
  source = "./modules/ec2"
  ami = "ami-0a0f1259dd1c90938"
  subnet_id = "subnet-07056ba67edeec87c"
  sg_id =  "sg-0f37dab191780c9f1"
  key_name = "pennam"

  tags = {
    Name = "ec2appserver"
  }


  
}  
  
  

terraform {
  required_version = ">= 1.0"}

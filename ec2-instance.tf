# Launching an EC2 instance using a Terraform module

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "jonnie-module-instance"

  instance_type          = "t2.micro"
  key_name               = "jonnie-vpc"
  monitoring             = true
  vpc_security_group_ids = ["sg-0f2b75b4a9fd385c5"]
  subnet_id              = "subnet-0ae95a6169df47414"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
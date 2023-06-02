/*
   EC2 Template
*/

// Module Template
module "ec2_instance" {
  source  = "app.terraform.io/podtfe/ec2/aws"
  version = "1.0.0"
  name = "tfe-ec2-instance"
  public_ip = true
  tags = {
    "Environment" = "Dev"
    "Provisioned" = "TFE"
  }
  subnet = "subnet-02d3f044075bbe8bb"
  volume_size = 20
  ami_id = "ami-0cce6b9dac6aadc8e"
  key_name = "mycloud"
  instance_type = "t2.micro"
  security_groups = ["sg-0c202a5babc888c56"]
}

// Template Outputs

// output "instance_id" {
//   value = module.ec2_instance.id
// }

// output "ip_address" {
//   value = module.ec2_instance.private_ip
// }

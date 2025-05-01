packer {
  required_plugins {
    amazon = {
      version = ">= 1.2.8"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

source "amazon-ebs" "amazon" {
  ami_name      = "wordpress {{ timestamp }}"
  instance_type = "t2.micro"
  region        = "us-east-1"
  source_ami = "ami-0e449927258d45bc4"
  ssh_username = "ec2-user"
  run_tags = { 
    Name = "instance"
  }
#   ami_regions = [
#     "us-east-1",
#     "us-east-2"
#   ]
}

build {
  name    = "packer"
  sources = [
    "source.amazon-ebs.amazon"
  ]
  provisioner "shell" {
    script = "apache.sh"
  }
}
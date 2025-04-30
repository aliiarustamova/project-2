packer {
  required_plugins {
    amazon = {
      version = ">= 1.2.8"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

source "amazon-ebs" "ubuntu" {
  ami_name      = "wordpress {{ timestamp }}"
  instance_type = "t2.micro"
  region        = "us-east-1"
  source_ami = "ami-0e449927258d45bc4"
  ssh_username = "ec2-user"
  run_tags = { 
    Name = "intance"
  }
#   ami_regions = [
#     "us-east-1",
#     "us-east-2"
#   ]
}

build {
  name    = "learn-packer"
  sources = [
    "source.amazon-ebs.ubuntu"
  ]
  provisioner "shell" {
    script = "hello.sh"
  }
}
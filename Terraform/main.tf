data "aws_ami" "wordpress" {
  most_recent = true
  filter {
    name   = "name"
    values = ["wordpress*"]
  }
  owners = ["self"]
}
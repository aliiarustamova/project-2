resource "aws_instance" "group-2" {
  ami           = data.aws_ami.wordpress.id
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public1.id
  vpc_security_group_ids = [aws_security_group.group2.id]
  user_data = file("../Packer/apache.sh")
  associate_public_ip_address = true
  tags = {
    Name = "amazon/linux"
  }
}

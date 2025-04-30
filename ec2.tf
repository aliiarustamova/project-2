resource "aws_instance" "group-2" {
  ami           = "ami-05572e392e80aee89"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public1.id
  vpc_security_group_ids = [aws_security_group.group2.id]
  user_data = file("apache.sh")

  tags = {
    Name = "amazon/linux"
  }
}
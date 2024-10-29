resource "aws_instance" "db" {
  
  ami = data.aws_ami.ami_id.id
  vpc_security_group_ids = ["sg-039a1e225ec0846a9"]
  instance_type = "t3.micro"
  tags = {
    Name = "data-source-practice"
  }
}
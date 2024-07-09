

resource "aws_instance" "Docker-Machine" {
  ami           =  "ami-07d9b9ddc6cd8dd30"   # "ami-080e1f13689e07408"   #    # Ubuntu
  instance_type =  "t3a.medium"             # "t2.micro"  #
  key_name      = var.user_name
  user_data     = file("./userdata/docker-machine.sh")
  depends_on = [ aws_key_pair.Mykeypair ]
  tags = {
    Name = "Docker-Machine"
  }

  vpc_security_group_ids = [aws_security_group.Docker-Machine-sg.id]

}



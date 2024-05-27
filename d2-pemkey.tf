

resource "aws_key_pair" "Mykeypair" {
  key_name   = var.user_name
  public_key =  tls_private_key.rsa.public_key_openssh  
}


resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}


resource "local_file" "Mykeypair" {
  content  = tls_private_key.rsa.private_key_pem
  filename = "${var.user_name}.pem"     
  file_permission = "400"
}

locals {
  my_private_key_content = tls_private_key.rsa.private_key_pem
}






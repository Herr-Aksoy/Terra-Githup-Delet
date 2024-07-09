

output "Docker-Machine-public-ip" {
  value = aws_instance.Docker-Machine.public_ip
}

output "Docker-Machine-private-ip" {
  value = aws_instance.Docker-Machine.private_ip
}

 
output "Docker-Machine-ssh-command" {
  value = "ssh -i '${var.user_name}.pem' ec2-user@${aws_instance.Docker-Machine.public_ip}"
}








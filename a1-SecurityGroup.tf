


resource "aws_security_group" "Docker-Machine-sg" {
  name        = "Docker-Machine-sg"
  description = "Docker icin security grup"


  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 9090           
    to_port     = 9090
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 5432              
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "All traffic" # Tüm trafiği izin ver
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # Tüm protokolleri izin vermek için -1 kullanılabilir
    cidr_blocks = ["0.0.0.0/0"] # Dikkatli olun, tüm bağlantıları izin vermek güvenlik riski oluşturabilir
  }
}









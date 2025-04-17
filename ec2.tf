resource "aws_instance" "web-server-app" {
  ami                    = "ami-0a0e5d9c7acc336f1"
  instance_type          = "t2.micro"
  key_name               = "bootcamp-avanti" #Adicione sua Key Pairs da AWS aqui!
  vpc_security_group_ids = [aws_security_group.bt-avantiSG-app.id]
  user_data              = file("script.sh")

  tags = {
    Name = "web-server-app"
  }
}
